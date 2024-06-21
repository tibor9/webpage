import pandas as pd
import requests
from datetime import datetime
import re
#import json


def download_csv(url):
    return pd.read_csv(url)

def fetch_publications(orcid, email):
    current_year = datetime.now().year
    url = f"https://api.crossref.org/works?filter=orcid:{orcid},from-pub-date:{current_year-1}-01-01,until-pub-date:{current_year}-12-31&mailto={email}&select=DOI,title,author,container-title,group-title,created"
    response = requests.get(url)
    if response.status_code == 200:
        return response.json()['message']['items']
    return []

def format_citation(items):
    print('Generating reference list')
    # Remove duplicates and sort by creation date
    unique_items = {item['DOI']: item for item in items}
    sorted_items = sorted(unique_items.values(), key=lambda x: x['created']['timestamp'], reverse=True)

    # Remove duplicate titles and retain newest version
    unique_titles = {}

    for item in sorted_items:
        title = item.get('title', [''])[0].strip().lower()
        timestamp = item['created']['timestamp']

        if title not in unique_titles or timestamp > unique_titles[title]['created']['timestamp']:
            unique_titles[title] = item

    sorted_items = sorted(unique_titles.values(), key=lambda x: x['created']['timestamp'], reverse=True)

    keyword_pattern = re.compile(r'contact|friendship|intergroup', re.IGNORECASE)

    contact_research = []
    other_research = []

    for item in sorted_items:
        authors = []
        for author in item.get('author', []):
            if 'family' in author:
                authors.append(f"{author['family']}, {' '.join([i[0]+'.' for i in author.get('given', '').split()])}")
            elif 'name' in author:
                authors.append(f"{author['name']}")
        
        if not authors:
            continue
        
        authors_str = ', '.join(authors)
        title = item.get('title', [''])[0]
        container_title = item.get('container-title', [''])[0] if item.get('container-title', ['']) else ''
        if not container_title:
            container_title = item.get('group-title', ['']) if item.get('group-title', ['']) else ''
        container_format = f"*{container_title}*" if container_title else ''
        year = item['created']['date-parts'][0][0]
        doi_url = f"https://doi.org/{item['DOI']}"
        entry = f"- {authors_str} ({year}). **{title}**. {container_format} [{doi_url}]({doi_url})"

        # Decide which list to append to based on title keywords
        if keyword_pattern.search(title):
            contact_research.append(entry)
        else:
            other_research.append(entry)
    
    return contact_research, other_research
  
def process_manual_additions(all_items, addition_df, email):
    print('Processing manual additions')
    # Remove items with DOIs marked as 'out'
    out_dois = set(addition_df[addition_df['Action'] == 'out']['DOI'])
    all_items = [item for item in all_items if item['DOI'] not in out_dois]
    
    # Fetch and add items with DOIs marked as 'in'
    in_dois = addition_df[addition_df['Action'] == 'in']['DOI']
    for doi in in_dois:
        url = f"https://api.crossref.org/works/{doi}?mailto={email}"
        response = requests.get(url)
        if response.status_code == 200:
            new_item = response.json()['message']
            if new_item['DOI'] not in [item['DOI'] for item in all_items]:  # Avoid duplicates
                all_items.append(new_item)
    return all_items

def main(email, orcid_url, additions_url):
    orcid_df = download_csv(orcid_url)
    all_items = []
    for orcid in orcid_df['ORCiD']:
        print('Retrieving publications for ORCID:', orcid)
        all_items.extend(fetch_publications(orcid, email))
    addition_df = download_csv(additions_url)
    all_items = process_manual_additions(all_items, addition_df, email)
    
    #with open("refs.json", "w") as final:
    #    json.dump(all_items, final)
    
    if all_items:
        contact_research, other_research = format_citation(all_items)
        with open("content/publication_list/_index.md", "w") as file:
            file.write("# Contact Research by Network Members\n")
            file.write("\n".join(contact_research))
            file.write("\n\n# Other Research by Network Members\n")
            file.write("\n".join(other_research))
            
if __name__ == "__main__":
    main('lukas.wallrich@gmail.com', 
      'https://docs.google.com/spreadsheets/d/e/2PACX-1vSUimHSgWwFYMjJRGacDTz_tvRxIjWEq5zn780Ow7-hUnze2riCZMQ9ur_LnlWneLVY2a0Mh3Qoa2V_/pub?gid=1836176751&single=true&output=csv',
      'https://docs.google.com/spreadsheets/d/e/2PACX-1vSUimHSgWwFYMjJRGacDTz_tvRxIjWEq5zn780Ow7-hUnze2riCZMQ9ur_LnlWneLVY2a0Mh3Qoa2V_/pub?gid=173603884&single=true&output=csv')
