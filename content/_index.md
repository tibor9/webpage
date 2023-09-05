---
# Leave the homepage title empty to use the site title
title:
date: 2023-09-15
type: landing

sections:
  - block: hero
    content:
      title: |
        Contact Research Network
      image:
        filename: home.jpg
      text: |
        <br>
        The **Contact Research Network** brings together intergroup contact researchers from across the UK 
        to share their latest research and collaborate on innovative projects.

  - block: people
    content:
      title: Meet the Team
      # Choose which groups/teams of users to display.
      #   Edit `user_groups` in each user's profile to add them to one or more of these groups.
      user_groups:
        - Principal Investigators
        - Researchers
        - Grad Students
        - Administration
        - Visitors
        - Alumni
      sort_by: Params.last_name
      sort_ascending: true
    design:
      # Show user's social networking links? (true/false)
      show_social: false
      # Show user's interests? (true/false)
      show_interests: true
      # Show user's role?
      show_role: true
      # Show user's organizations/affiliations?
      show_organizations: true
---
