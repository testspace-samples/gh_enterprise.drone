# GitHub Enterprise Example for https://cloud.drone.io

[![Build Status](https://cloud.drone.io/api/badges/testspace-samples/gh_enterprise.drone/status.svg)](https://cloud.drone.io/testspace-samples/gh_enterprise.drone)

Steps to add Testspace to a GitHub enterprise repo using Drone as the CI
* Create a new project in your Testspace organization using this naming convention `GitHub org:repo name`. Using this repo as an example the project name would be `testspace-samples:gh_enterprise.drone` 
* To your .drone.yml file add a step for Testspace using the .drone.yml file in this repo as a reference.
* Add testspace_token to Drone Secrets for a user that has access to Testspace project
* Note that for GitHub enterprise a deleted branch requires that the corresponding space be *manually* deleted via the Testspace UI.

For additional documentation on adding Testspace to a CI see [Testspace Help](https://help.testspace.com/docs/publish/push-data-add-to-ci#drone).