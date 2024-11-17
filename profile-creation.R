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
  # list(name = "Tausch", first_name = "Nicole", role = "Reader", institution = "University of St Andrews", url = "https://www.st-andrews.ac.uk", email = "nt20@st-andrews.ac.uk"),
  # list(name = "Wu", first_name = "Liang", role = "PhD Student", institution = "Durham University", url = "https://www.durham.ac.uk", email = "liang.wu@durham.ac.uk"),
  # list(name = "Lauterbach", first_name = "Aaron", role = "PhD Student", institution = "Western Sydney University", url = "https://www.westernsydney.edu.au", email = "aaronlauterbach@gmx.net")
  # list(name = "Hodson", first_name = "Gordon", role = "Distinguished Professor", institution = "Brock University", url = "https://www.hodsonlab.com", email = "ghodson@brocku.ca"),
  # list(name = "Borinca", first_name = "Islam", role = "Assistant Professor", institution = "University of Groningen", url = "https://www.rug.nl/staff/i.borinca/?lang=en", email = "i.borinca@rug.nl")
  # list(name = "Shani", first_name = "Maor", role = "Post Doc", institution = "University of Osnabrück", url = "https://www.psychologie.uni-osnabrueck.de/institut/mitarbeiterverzeichnis.html?module=TemplatePersondetails&target=14827&source=14827&range_id=9ae3b681c2e2b51c20fd3b31756a5dd4&username=mashani", email = "maor.shani@uos.de"),
  # list(name = "Degner", first_name = "Juliane", role = "Professor", institution = "University of Hamburg", url = "https://www.psy.uni-hamburg.de/arbeitsbereiche/sozialpsychologie/personen/degner-juliane.html", email = "juliane.degner@uni-hamburg.de"),
  # list(name = "Stelter", first_name = "Marleen", role = "Researcher & Lecturer", institution = "FernUniversität in Hagen", url = "https://www.fernuni-hagen.de/psychologische-methodenlehre/team/marleen.stelter.shtml", email = "marleen.stelter@fernuni-hagen.de"),
  # list(name = "Žeželj", first_name = "Iris", role = "Associate Professor", institution = "University of Belgrade", url = "https://lira.f.bg.ac.rs/phd-iris-zezelj/", email = "izezelj@f.bg.ac.rs"),
  # list(name = "Haines", first_name = "Emily", role = "PhD Student", institution = "Flinders University", url = "https://researchnow.flinders.edu.au/en/persons/emily-haines", email = "emily.haines@flinders.edu.au"),
  # list(name = "Baker", first_name = "Caitlin", role = "Lecturer", institution = "Aberystwyth University", url = "https://www.aber.ac.uk/en/psychology/staff-profiles/listing/profile/cab96/", email = "cab96@aber.ac.uk"),
  # list(name = "Garau", first_name = "Tania", role = "Post Doc", institution = "University of Ferrara", url = "https://scholar.google.com/citations?user=A0soRDMAAAAJ", email = "tania.garau@unife.it"),
  # list(name = "Morhayim", first_name = "Liora", role = "PhD Student", institution = "University of Massachusetts", url = "https://www.umass.edu/psychological-brain-sciences/about/directory/liora-morhayim", email = "lmorhayim@umass.edu")
  list(name = "Peetz", first_name = "Hannah", role = "PhD Candidate", institution = "Radboud University Nijmegen", url = "https://www.linkedin.com/in/hannah-peetz-148176150/?originalSubdomain=nl", email = "hannah-peetz@gmx.de"),
  list(name = "Komyaginskaya", first_name = "Elizaveta", role = "", institution = "Center for Sociocultural Research, HSE University", url = "https://www.researchgate.net/profile/Elizaveta-Komyaginskaya", email = "elikomyaginskaya@gmail.com"),
  list(name = "Ulug", first_name = "Melis", role = "Senior Lecturer", institution = "University of Sussex", url = "https://profiles.sussex.ac.uk/p524167-ozden-melis-ulug", email = "omu20@sussex.ac.uk"),
  list(name = "Barnard", first_name = "Monica", role = "PhD Candidate", institution = "University of Sussex", url = "https://profiles.sussex.ac.uk/p600734-monica-barnard", email = "Monica.Barnard@sussex.ac.uk"),
  list(name = "Solak", first_name = "Nevin", role = "Associate Professor", institution = "Orta Doğu Teknik Üniversitesi", url = "https://www.linkedin.com/in/nevin-solak-02261784/", email = "nevin.solak@gmail.com"),
  list(name = "Christ", first_name = "Oliver", role = "Professor", institution = "FernUniversität in Hagen", url = "https://www.fernuni-hagen.de/psychologische-methodenlehre/team/oliver.christ.shtml", email = "oliver.christ@fernuni-hagen.de"),
  list(name = "Guerra", first_name = "Rita", role = "Research Fellow", institution = "ISCTE - University Institute of Lisbon", url = "https://ciencia.iscte-iul.pt/authors/rita-guerra/cv", email = "ana_rita_guerra@iscte-iul.pt"),
  list(name = "González", first_name = "Roberto", role = "Professor", institution = "Pontificia Universidad Católica de Chile", url = "https://scholar.google.com/citations?user=9wgYRZoAAAAJ&hl=en&oi=sra", email = "rgonzale@uc.cl"),
  list(name = "Lutterbach", first_name = "Sebastian", role = "PhD Candidate", institution = "Friedrich-Schiller-Universität Jena", url = "https://www.fsv.uni-jena.de/43197/dr-sebastian-lutterbach", email = "sebastian.lutterbach@uni-jena.de"),
  list(name = "Zingora", first_name = "Tibor", role = "Post Doc", institution = "University of Groningen", url = "https://www.linkedin.com/in/tibor-%25C5%25BEingora-90980a84/", email = "t.zingora@rug.nl")
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
