# gh_enterprise.drone

Steps to add Testspace to a GitHub enterprise repo using Drone as the CI
* Create a new project in your Testspace organization using this naming convention `GitHub org:repo name`. Using this repo as an example the project name would be `testspace-samples:gh_enterprise.drone` 
* To your .drone.yml file add a step for Testspace using the .drone.yml file in this repo as a reference.
* Add create_testspace_space.sh file to your repo.
* Add testspace_token to Drone Secrets for a user that has access to Testspace project

For additional documention on adding Testspace to a CI see [Testspace Help](https://help.testspace.com/how-to:add-to-ci)