FROM caddy:2-alpine

# Copy your Caddyfile into the container
COPY Caddyfile /etc/caddy/Caddyfile

# Caddy automatically picks up the $PORT environment variable provided by Railway
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]