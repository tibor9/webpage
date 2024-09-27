# Define the data with full names
people <- list(
#   list(name = "Green", first_name = "Eva G T", role = "Associate Professor", institution = "Université de Lausanne", url = "https://www.unil.ch", email = "eva.green@unil.ch <eva.green@unil.ch>"),
#   list(name = "Köbrich", first_name = "Julia", role = "Research Fellow", institution = "GIGA Hamburg", url = "https://www.giga-hamburg.de", email = "julia.koebrich@giga-hamburg.de <julia.koebrich@giga-hamburg.de>"),
#   #list(name = "Van Assche", first_name = "Jasper", role = "", institution = "Université Libre de Bruxelles", url = "https://www.ulb.be", email = "jasper.van.assche@ulb.be <jasper.van.assche@ulb.be>"),
#   list(name = "Ditlmann", first_name = "Ruth", role = "Professor of Social Psychology and Public Policy", institution = "Hertie School", url = "https://www.hertie-school.org", email = "r.ditlmann@hertie-school.org <r.ditlmann@hertie-school.org>"),
#   list(name = "Sengupta", first_name = "Nikhil", role = "Senior Lecturer", institution = "University of Kent", url = "https://www.kent.ac.uk", email = "n.sengupta@kent.ac.uk <n.sengupta@kent.ac.uk>"),
#   list(name = "Barlow", first_name = "Fiona", role = "Professor", institution = "University of Queensland", url = "https://www.uq.edu.au", email = "f.barlow@psy.uq.edu.au <f.barlow@psy.uq.edu.au>"),
#   list(name = "Wright", first_name = "Stephen", role = "", institution = "Simon Fraser University", url = "https://www.sfu.ca", email = "scwright@sfu.ca <scwright@sfu.ca>"),
#   list(name = "Visintin", first_name = "Emilio Paolo", role = "Associate Professor in Social Psychology", institution = "University of Ferrara", url = "https://www.unife.it", email = "emiliopaolo.visintin@unife.it <emiliopaolo.visintin@unife.it>"),
#   list(name = "Árnadóttir", first_name = "Katrín", role = "Post-Doc", institution = "KU Leuven", url = "https://www.kuleuven.be", email = "katrin.arnadottir@kuleuven.be <katrin.arnadottir@kuleuven.be>"),
# #  list(name = "Klocke", first_name = "Ulrich", role = "", institution = "Humboldt University of Berlin", url = "https://www.hu-berlin.de", email = "klocke@hu-berlin.de <klocke@hu-berlin.de>"),
#   list(name = "Dixon", first_name = "John", role = "Professor of Psychology", institution = "The Open University", url = "https://www.open.ac.uk", email = "john.dixon@open.ac.uk <john.dixon@open.ac.uk>"),
#   list(name = "Crone", first_name = "Cassandra", role = "PhD Candidate", institution = "Macquarie University", url = "https://www.mq.edu.au", email = "cassandra-lynn.crone@hdr.mq.edu.au <cassandra-lynn.crone@hdr.mq.edu.au>"),
#   list(name = "Casquinho", first_name = "Beatriz", role = "PhD Candidate", institution = "ISCTE – University Institute of Lisbon", url = "https://www.iscte-iul.pt", email = "bmgco@iscte-iul.pt <bmgco@iscte-iul.pt>")
  list(name = "Tausch", first_name = "Nicole", role = "Reader", institution = "University of St Andrews", url = "https://www.st-andrews.ac.uk", email = "nt20@st-andrews.ac.uk"),
  list(name = "Wu", first_name = "Liang", role = "PhD Student", institution = "Durham University", url = "https://www.durham.ac.uk", email = "liang.wu@durham.ac.uk"),
  list(name = "Lauterbach", first_name = "Aaron", role = "PhD Student", institution = "Western Sydney University", url = "https://www.westernsydney.edu.au", email = "aaronlauterbach@gmx.net")
)

people <- lapply(people, function(person) {
  person$name <- paste(person$first_name, person$name)
  person
})


# Function to create directory and write _index.md
create_profile <- function(person) {
  dir.create(file.path("content", "authors", tolower(person$first_name)))
  file_path <- file.path("content", "authors", tolower(person$first_name), "_index.md")
  content <- glue::glue(
    "---\n",
    "# Display name\n",
    "title: {person$name}\n",
    "# Is this the primary user of the site?\n",
    "superuser: true\n",
    "\n",
    "# Role/position\n",
    "role: {person$role}\n",
    "\n",
    "# Organizations/Affiliations\n",
    "organizations:\n",
    "- name: {person$institution}\n",
    "  url: {person$url}\n",
    "\n",
    "# Short bio (displayed in user profile at end of posts)\n",
    "bio: \n",
    "\n",
    "# Social/Academic Networking\n",
    "# For available icons, see: https://linkprotect.cudasvc.com/url?a=https%3a%2f%2fsourcethemes.com%2facademic%2fdocs%2fpage-builder%2f%23icons&c=E,1,03Q55I8O6D-V-MsaI5i3Th7UvGHpRVj6l4dANOBXiQaBRckWF-Uxi40d1B8mh5T88rS8FWL6R2UVO5-e4mDAmzVU5C2FJcU0kEkb6Qi2tyc,&typo=1\n",
    "#   For an email link, use \"fas\" icon pack, \"envelope\" icon, and a link in the\n",
    "#   form \"mailto:your-email@example.com\" or \"#contact\" for contact widget.\n",
    "social:\n",
    "- icon: envelope\n",
    "  icon_pack: fas\n",
    "  link: mailto:{person$email}\n",
    "\n",
    "# Organizational groups that you belong to (for People widget)\n",
    "#   Set this to `[]` or comment out if you are not using People widget.\n",
    "user_groups:\n",
    "- Network Members\n",
    "---\n"
  )
  writeLines(content, file_path)
  file.copy(file.path("content", "authors", "avatar.jpg"), file.path("content", "authors", tolower(person$first_name), "avatar.jpg"))
}

# Create profiles for all people
lapply(people, create_profile)
