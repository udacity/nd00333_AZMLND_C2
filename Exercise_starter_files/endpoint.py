import requests
import json

# URL for the web service, should be similar to:
# 'http://8530a665-66f3-49c8-a953-b82a2d312917.eastus.azurecontainer.io/score'
scoring_uri = ""

# If the service is authenticated, set the key or token
key = ""

# Two sets of data to score, so we get two results back
data = {
    "data": [
        {
            "instant": 1,
            "date": "2013-01-01 00:00:00,000000",
            "season": 1,
            "yr": 0,
            "mnth": 1,
            "weekday": 6,
            "weathersit": 2,
            "temp": 0.344167,
            "atemp": 0.363625,
            "hum": 0.805833,
            "windspeed": 0.160446,
            "casual": 331,
            "registered": 654,
        },
    ]
}
# Convert to JSON string
input_data = json.dumps(data)
with open("data.json", "w") as _f:
    _f.write(input_data)

# Set the content type
headers = {"Content-Type": "application/json"}
# If authentication is enabled, set the authorization header
headers["Authorization"] = f"Bearer {key}"

# Make the request and display the response
resp = requests.post(scoring_uri, input_data, headers=headers)
print(resp.json())
