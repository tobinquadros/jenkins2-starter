# Jenkins v2 Starter

Dockerized setup of Jenkins v2 for local testing of Jenkins build configurations, and the Jenkins API.

## Docker Setup

*Note:* Docker must be installed on your system before using the setup scripts.

Clone the repo:
```
git clone git@github.com:tobinquadros/jenkins2-starter.git
```

Run the setup script:
```
cd jenkins2-starter
./bin/setup
```

Follow the command line prompts, ensure you have the initial Jenkins admin key
and proceed to the browser.

## Jenkins initial setup

1. Paste in the initial admin key.

2. Choose the plugin install method and your preferred plugins (ensure to install git plugin).

3. Add the admin user with these credentials (the dotenv setup depends on these settings):

  - Username: `user`
  - Password: `password`
  - Fullname: `user`
  - Email: `me@example.com`

## Add jobs to Jenkins

*Note:* You can use this repo for the source repository because it has multiple branches and a Jenkinsfile for testing out v2 features.

1. Create a pipeline job
2. Create a multibranch job

## Run the Jenkins API client scripts

To list all jobs in Jenkins thru the Go client (ensure the GOPATH is set properly):

```
go get github.com/bndr/gojenkins
go get github.com/joho/godotenv
go run go-client/list-jobs.go
```

To list all jobs in Jenkins thru the Ruby client (ensure bundler gem is installed):

```
bundle install
./ruby-client/list-jobs.rb
```

At this point you are ready to further test Jenkins v2 and the Ruby/Go API clients!
