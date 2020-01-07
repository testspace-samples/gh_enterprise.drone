#!/bin/sh
testspace_domain=$1
testspace_space_url=https://$testspace_domain/api/projects/$DRONE_REPO_NAMESPACE:$DRONE_REPO_NAME/spaces
space_name=$DRONE_BRANCH
if [ $DRONE_PULL_REQUEST ]; then
  space_name=$DRONE_SOURCE_BRANCH
fi
response=$(curl --write-out %{http_code} --silent --output /dev/null -L -u "$TESTSPACE_TOKEN:" "$testspace_space_url/$space_name")
if [ $response -eq 404 ]; then
  curl -d "{\"name\": \"$space_name\"}" -H "Content-type: application/json" -X POST -u "$TESTSPACE_TOKEN:" $testspace_space_url
fi