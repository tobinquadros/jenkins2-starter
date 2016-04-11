package main

import (
	"fmt"
	"os"
	"strings"

	"github.com/bndr/gojenkins"
	"github.com/joho/godotenv"
)

func main() {
	err := godotenv.Load()
	if err != nil {
		panic(err)
	}

	jenkins_url := strings.Join([]string{"http://", os.Getenv("JENKINS_SERVER_IP"), ":", os.Getenv("JENKINS_SERVER_PORT")}, "")
	jenkins_username := os.Getenv("JENKINS_USERNAME")
	jenkins_password := os.Getenv("JENKINS_PASSWORD")

	jenkins, err := gojenkins.CreateJenkins(jenkins_url, jenkins_username, jenkins_password).Init()
	if err != nil {
		fmt.Println("Failed to create jenkins client instance")
	}

	jobs, err := jenkins.GetAllJobs()
	if err != nil {
		panic(err)
	}
	for _, job := range jobs {
		fmt.Println("Found job:", job.Base)
	}
}
