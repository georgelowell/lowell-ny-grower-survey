# 2026 Lowell Grower's Survey — NY Cultivator Market Survey

A survey of NY cannabis cultivators designed to understand the health and trajectory of the cultivation market. Built by [Lowell Herb Co](https://lowellherbco.com).

## How it works

1. Each licensed NY cultivator receives a **unique survey link** containing a token tied to their OCM license number
2. When they complete the survey, their response is recorded along with their token
3. After submission, they get **access to the full aggregated results**

No personal identity questions needed — the token maps back to the license database.

## Tech

Pure static site (HTML/CSS/JS) hosted on GitHub Pages. No backend server needed — responses stored via GitHub Issues API or a simple JSON endpoint.

## Data Source

OCM License Dataset (data.ny.gov) — 241 unique active cultivator entities, with scrape-enhanced contact info.

## Structure

```
├── index.html          # Landing page / survey intro
├── survey.html         # The survey form (with token in URL)
├── results.html        # Aggregated results page
├── admin.html          # Token management and data view
├── data/
│   ├── cultivators.json     # License data + contacts
│   ├── tokens.json          # Generated unique tokens
│   └── responses.json       # Survey responses (aggregated)
├── assets/
│   └── style.css
└── README.md
```
