library(googlesheets4)
library(httr)
library(digest)

# Define file path for hash
hash_file <- "gs_announcement_hash.txt"

# Authenticate and read the Google Sheet
sheet_url <- "https://docs.google.com/spreadsheets/d/19ylN6fWPO_aMLx9pPBacXodXKEih42iNmceInhMT6Zg/edit?gid=0#gid=0"
googlesheets4::gs4_deauth()
data <- read_sheet(sheet_url)

# Compute new hash
new_hash <- digest(data, algo = "md5")

# Read old hash if exists
old_hash <- if (file.exists(hash_file)) readLines(hash_file) else NULL

# Abort if data hasn't changed
if (!is.null(old_hash) && new_hash == old_hash) {
  if (!interactive()) {
    message("Data hasn't changed. Exiting.")
    quit(save = "no", status = 0)
  } else {
    stop("Data hasn't changed. Exiting.")
  }

}

# Save new hash
writeLines(new_hash, hash_file)

# Filter for show = yes
filtered_data <- data[data$Show == "yes", ]

# Extract ID from Google Drive URL
extract_id <- function(url) {
  pattern <- "file/d/([a-zA-Z0-9_-]+)"
  match <- regmatches(url, regexpr(pattern, url))
  id <- sub("file/d/", "", match)
  return(id)
}

# Function to get the image from URL and save it with the correct extension
get_image <- function(url, slug) {
  url <- unlist(url)
  # Check if URL ends with png, jpg or jpeg
  if (grepl("\\.(png|jpg|jpeg)$", url)) {
    file_ext <- tools::file_ext(url)
    file_path <- file.path(slug, paste0("featured.", file_ext))
    GET(url, write_disk(file_path, overwrite = TRUE))
  } else {
    # Extract ID from the URL

    if (!grepl("uc\\?export", url)) {
      id <- extract_id(url)
      download_url <- paste0("https://drive.google.com/uc?export=download&id=", id)
    } else {
      download_url <- url
    }

    # Perform GET request to check headers
    response <- GET(download_url)
    content_type <- headers(response)$`content-type`

    # Determine the file extension based on content type
    if (content_type == "image/jpeg") {
      file_ext <- "jpg"
    } else if (content_type == "image/png") {
      file_ext <- "png"
    } else {
      stop("Unsupported image type.")
    }

    # Define the final file path
    file_path <- file.path(slug, paste0("featured.", file_ext))

    # Download the file
    GET(download_url, write_disk(file_path, overwrite = TRUE))
  }

  # Check if the file is downloaded
  if (file.exists(file_path)) {
    message("File downloaded successfully.")
  } else {
    message("File download failed.")
  }
}

# Function to create a post from a row of the data
create_post <- function(row) {
  post_content <- paste0(
    "---\n",
    "title: \"", row["Title"], "\"\n",
    "date: ", row["Date"], "\n",
    "tags: []\n",
    "categories:\n",
    "  - ", row["Category"], "\n",
    "authors: [\"", row["Author"], "\"]\n",
    "---\n\n",
    gsub("\n", "\n  ", row["Description"]), "\n  \n", # Add spaces so that linebreaks are retained in Markdown
    ifelse(!is.na(row["webUrl"]) & row["webUrl"] != "", paste0("[Read more](", row["webUrl"], ")"), "")
  )

  slug_folder <- file.path("content/post", as.character(row["Slug"]))
  dir.create(slug_folder, showWarnings = FALSE, recursive = TRUE)

  post_file <- file.path(slug_folder, "index.md")
  writeLines(post_content, post_file)

  message("Current slug:" , row["Slug"])

  get_image(row["imageUrl"], slug_folder)
}


# Apply the function to each row of the filtered data
apply(filtered_data, 1, function(row) create_post(as.list(row)))
