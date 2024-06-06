# Define the data with full names
people <- list(
  # list(name = "Hanna Zagefka", first_name = "Hanna", role = "Professor of Social Psychology", institution = "Royal Holloway, University of London", url = "https://www.royalholloway.ac.uk", email = "Hanna.Zagefka@rhul.ac.uk"),
  # list(name = "Orkun Yetkili", first_name = "Orkun", role = "Senior Lecturer in Psychology", institution = "University of Westminster", url = "https://www.westminster.ac.uk", email = "Orkun.Yetkili@westminster.ac.uk"),
  # list(name = "Emine Bilgen", first_name = "Emine", role = "PhD Student", institution = "Royal Holloway, University of London", url = "https://www.royalholloway.ac.uk", email = "Emine.Bilgen.2021@live.rhul.ac.uk"),
  # list(name = "Deborah Shulman", first_name = "Deborah", role = "Senior Research Associate", institution = "University of East Anglia", url = "https://www.uea.ac.uk", email = "D.Shulman@uea.ac.uk"),
  # list(name = "Merve Ozturk", first_name = "Merve", role = "PhD Student", institution = "Durham University", url = "https://www.dur.ac.uk", email = "merve.ozturk@durham.ac.uk"),
  # list(name = "Jie Huang", first_name = "Jie", role = "PhD Student", institution = "Durham University", url = "https://www.dur.ac.uk", email = "jie.huang3@durham.ac.uk"),
  # list(name = "Rhiannon Turner", first_name = "Rhiannon", role = "Professor of Social Psychology", institution = "Queen’s University Belfast", url = "https://www.qub.ac.uk", email = "r.turner@qub.ac.uk"),
  # list(name = "Nina Briggs", first_name = "Nina", role = "Research Fellow", institution = "Queen’s University Belfast", url = "https://www.qub.ac.uk", email = "n.briggs@qub.ac.uk"),
  # list(name = "Sylvie Graf", first_name = "Sylvie", role = "Professor", institution = "Czech Academy of Sciences", url = "https://www.cas.cz", email = "s.graf@cas.cz"),
  # list(name = "Maria-Therese Friehs", first_name = "Maria-Therese", role = "Research Associate", institution = "University of Hagen", url = "https://www.fernuni-hagen.de", email = "maria.friehs@fernuni-hagen.de"),
  # list(name = "Laura Joyner", first_name = "Laura", role = "Research Fellow", institution = "Middlesex University", url = "https://www.mdx.ac.uk", email = "l.joyner@mdx.ac.uk"),
  # list(name = "Francesca Prati", first_name = "Francesca", role = "Associate Professor of Social Psychology", institution = "University of Bologna", url = "https://www.unibo.it/sitoweb/francesca.prati", email = "francesca.prati@unibo.it"),
  # list(name = "Ulrich Wagner", first_name = "Ulrich", role = "Professor of Social Psychology", institution = "University of Marburg", url = "https://www.uni-marburg.de/de/fb04/team-cohrs/team/ulrich-wagner", email = "Wagner1@staff.uni-marburg.de"),
  # list(name = "Maarten van Zalk", first_name = "Maarten", role = "Professor of Developmental Psychology", institution = "University of Osnabrück", url = "https://www.imis.uni-osnabrueck.de/personen/imis_mitglieder/van_zalk_maarten.html", email = "mavanzalk@uni-osnabrueck.de"),
  list(name = "Sarina Schäfer", first_name = "Sarina", role = "Lecturer", institution = "University of Hagen", url = "https://www.fernuni-hagen.de", email = "sarina.schaefer@fernuni-hagen.de")
)

# Function to create directory and write _index.md
create_profile <- function(person) {
  dir.create(tolower(person$first_name), showWarnings = FALSE)
  file_path <- file.path(tolower(person$first_name), "_index.md")
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
}

# Create profiles for all people
lapply(people, create_profile)
