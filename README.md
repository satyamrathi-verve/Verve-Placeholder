# Verve Placeholder — Off the Books Project

Static "Under Construction" page for **offthebooksproject.in**, served from a tiny
nginx container on Google Cloud Run. Separate from the main Annual Day app.

## Structure
- `site/index.html` — the page (self-contained, no build step)
- `site/verve-logo.png` — Verve logo
- `nginx.conf.template` — binds nginx to Cloud Run's `$PORT`
- `Dockerfile` — `nginx:alpine` image

## Deploy
```bash
gcloud run deploy offthebooks-construction \
  --source . \
  --region asia-south1 \
  --allow-unauthenticated \
  --port 8080
```

To update the page: edit `site/index.html` and re-run the deploy command.
