# Green Pacific Cleaning — Website & Booking

This repository holds the **frontend website** and the **(upcoming) booking backend** for Green Pacific Cleaning.

---

## Structure

```
green-pacific-cleaning-site/
├─ frontend/               # Static site (your gp-cleaning-final files go here)
├─ backend/                # Booking API (Flask/Node/etc.) goes here
├─ .github/                # GitHub CI + issue/PR templates
├─ docs/                   # Changelog, content plans, etc.
└─ scripts/                # Local dev helpers
```

> **Important:** Unzip your `gp-cleaning-final.zip` and place all files from the `website/` folder into this repo's `frontend/` folder.

---

## Quick Start (Windows PowerShell)

1) **Create a new GitHub repo** (empty — no README). Name suggestion: `green-pacific-cleaning`  
2) **Clone it locally** (replace YOUR-USERNAME):
```pwsh
cd "C:\Users\Green Pacific\Desktop\Projects"
git clone https://github.com/YOUR-USERNAME/green-pacific-cleaning.git
cd green-pacific-cleaning
```

3) **Copy this skeleton in**, then move your site:
- Unzip the file I provided and copy **all** contents into `green-pacific-cleaning/`
- Extract `gp-cleaning-final.zip` you received earlier and copy the `website/` contents into `frontend/`

4) **Commit & push:**
```pwsh
git add -A
git commit -m "chore: bootstrap repo with frontend skeleton"
git push origin main
```

---

## Local preview (static)
Use any simple static server to preview the site:
- VS Code extension: *Live Server* → open `frontend/index.html`
- Python:
  ```pwsh
  cd frontend
  python -m http.server 8080
  # then browse http://localhost:8080
  ```

---

## Optional: GitHub Pages for staging
This workflow (in `.github/workflows/deploy-frontend.yml`) can deploy `frontend/` to GitHub Pages.

**Setup once:**
1. GitHub → *Settings* → *Pages* → Source: **GitHub Actions**
2. Push to `main` and your site will build to `https://<user>.github.io/<repo>/`

If you have a separate backend, Pages is only for **staging the static UI**. Use Render/Heroku/Fly/EC2 for the API.

---

## Booking integration — what I need from you

Please fill **docs/BOOKING_SPEC_TEMPLATE.md** and add any API docs you already have.

- API base URL (dev/prod), auth scheme
- Endpoints + verbs (`/api/v1/booking`, `/availability`, etc.)
- Required fields (names, types, validation, examples)
- Confirmation flow (email/SMS/Slack?), success criteria (idempotency, duplicates)
- Webhook(s) to receive confirmations/cancellations
- Error shapes and messages
- Rate limits and security notes
- Environment variables to use in frontend (never commit secrets)

Once you push those details, I can wire the booking page (`/frontend/booking.html`) and the API client.

---

## Content tasks to track
Create issues using our templates for:
- **Content updates** (copy/sections/assets)
- **Design tweaks** (header/footer/menu, responsive)
- **Bugs** (broken links, layout glitches)
- **Booking** (UI + API wiring)

See **.github/ISSUE_TEMPLATE/**.

---

## Contributing
- Branch naming: `feature/<desc>`, `fix/<desc>`, `content/<page>`  
- Open PRs to `main` with the provided template and checklist  
- CI will build the static site (and optionally deploy)  

---

## License
© 2025 Green Pacific Cleaning and Facility Care. All rights reserved.
