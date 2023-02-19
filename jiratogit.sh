#!/bin/bash
set -e

api_url="https://prometeia.atlassian.net:8081/rest/api/2/issue/${INPUT_JIRA_ID}"
echo $api_url

issuetype_name=$(curl "${api_url}" | jq ".issuetype.name")
echo $issuetype_name

echo "::set-output name=$issuetype_name::$issuetype_name"