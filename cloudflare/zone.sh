#!/bin/bash

# Cloudflare API credentials
# CF_EMAIL="<your-email>"
# CF_API_TOKEN="<your-api-token>"

CF_API_BASE_URL="https://api.cloudflare.com/client/v4"

# Function to list all zones
list_zones() {
    local url="${CF_API_BASE_URL}/zones"

    # Make the API request to list zones
    response=$(curl -s -X GET "$url" \
        -H "X-Auth-Email: $CF_EMAIL" \
        -H "Authorization: Bearer $CF_API_TOKEN" \
        -H "Content-Type: application/json")

    # Parse and display the response using jq
    echo "$response" | jq -r '.result[] | [.id, .name, "name_servers=" + (.name_servers | join(",")), .status] | @tsv'
}

# Main script logic based on command arguments
case "$1" in
    list|ls)
        list_zones
        ;;
    *)
        echo "Usage: $0 {list|ls}"
        exit 1
        ;;
esac
