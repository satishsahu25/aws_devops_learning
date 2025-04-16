#GIthub API URL
API_URL="https://api.github.com"

#Github username and personal access token
USERNAME=
TOKEN=

#User and Repo info
REPO_OWNER=$1

#Function to make a GET REQUEST to Github API
function github_api_get {
    local endpoint="$1"
    local url="${API_URL}/${endpoint}"

    #send a get request to github api
    curl -s -u "${USERNAME}:${TOKEN}" "$url"
}
