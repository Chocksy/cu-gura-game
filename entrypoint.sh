#!/bin/sh

# Replace the placeholder with actual API key from environment variable
if [ -n "$OPENROUTER_API_KEY" ]; then
    sed -i "s|%%OPENROUTER_API_KEY%%|$OPENROUTER_API_KEY|g" /usr/share/nginx/html/index.html
    echo "API key injected from environment"
else
    echo "No OPENROUTER_API_KEY set - users will need to enter their own key"
fi

# Start nginx
exec nginx -g 'daemon off;'
