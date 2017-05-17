# haven.io

An app to collect data from the homeless by the homeless to help the homeless.

## Setup
1. Clone
2. Run `bundle install` to install dependencies
3. Run `bin/rake db:create`
4. Run `bin/rake db:migrate`
5. Run `bin/rake db:seed`

## Working with Git
Always create your own branch and never commit directly to master branch, please follow these steps:
Create a new branch
1. `git checkout -b <<your branch name>>`
Push your branch to origin to track changes
2. `git push --set-upstream origin <<your branch name>>`
Commit and push all your changes to origin as you work
once you are done your feature switch to local master branch
3. `now go on github and generate a pull request`
Ask another team member to review your code and merge it to remote master
once your branch is merged checkout you local master branch and pull from origin
4. `git checkout master`
5. `git pull origin master`
Now delete your feature branch from origin as a clean up
6. `git push origin --delete <<your branch name>>`
Finally delete your remote feature branch
7 `git branch -d <<your branch name>>`