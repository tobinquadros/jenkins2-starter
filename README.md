# Jenkins v2 Starter

Dockerized setup of Jenkins v2 for local testing of Jenkins build configurations, and the Jenkins API.

## Docker Setup

*Note:* Docker must be installed on your system before using the setup scripts.

Clone the repo:
```
git clone git@github.com:tobinquadros/jenkins2-starter.git && cd jenkins2-starter
```

Run the setup script:
```
./bin/setup
```

You can optionally override the docker-machine "default" hostname:

```
DOCKER_MACHINE_HOSTNAME="dockerhost" ./bin/setup
```

Follow the command line prompt, ensure you have the initial Jenkins admin key
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

## Run the Jenkins API client starter scripts

###### To list all jobs in Jenkins thru the Go client

Ensure your GOPATH is set properly and install the dependencies:

```
go get github.com/bndr/gojenkins
go get github.com/joho/godotenv
```

Run the starter script:

```
go run go-client/list-jobs.go
```

For more info see the [GoJenkins Github
Repo](https://github.com/bndr/gojenkins) or the
[GoDocs](https://godoc.org/github.com/bndr/gojenkins) page.

###### To list all jobs in Jenkins thru the Ruby client

Ensure the bundler gem is installed and install dependencies:

```
gem install bundler # may require sudo
bundle install
```

Run the starter script:

```
./ruby-client/list-jobs.rb
```

For more info see the [JenkinsAPIClient Github
Repo](https://github.com/arangamani/jenkins_api_client) or the
[Docs](http://github.arangamani.net/jenkins_api_client/) page.

## Profit

At this point you are ready to further test Jenkins v2 and the Ruby/Go API clients!
