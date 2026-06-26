# Static "Under Construction" page for offthebooksproject.in on Cloud Run.
# nginx:alpine runs envsubst on *.template files at startup, so we can bind
# to the $PORT Cloud Run provides (defaults to 8080).
FROM nginx:alpine

# Default port for local runs; Cloud Run overrides this with PORT=8080.
ENV PORT=8080

COPY site/ /usr/share/nginx/html/
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

EXPOSE 8080
