#!/bin/bash

# Replace this with your Genymotion API token
API_TOKEN="eimbunr8jw31obj7289dntc6tpyow8tku14dhrieqwvqotqao8gobgukjd7gtuhp8fj0gru837dx2daus17ab49aeptrs1eufzdfjyh3lgs1hwi9iznqdgqq5jao2erzdt7mcd97kxa63h8tyihtiegr7wj8jgc32r2saebnecto7faelstv5pinxzp4dz5chbut6qev9flerzj26u2tjljaow5o4rsttqbaqti20btrgzkso82nw23et9tvqdxx"

# Genymotion Cloud API URL
API_URL="https://cloud.genymotion.com/api/v1"

# Device configuration (change these values as needed)
DEVICE_NAME="MyCloudPhone"
DEVICE_TEMPLATE="android-10"  # Example template (change as needed)

# Create a new device
curl -X POST "$API_URL/devices" \
  -H "Authorization: Bearer $API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "'$DEVICE_NAME'",
    "template": "'$DEVICE_TEMPLATE'"
  }'

# Start the device
curl -X POST "$API_URL/devices/$DEVICE_NAME/start" \
  -H "Authorization: Bearer $API_TOKEN"
  
