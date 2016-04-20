#!/usr/bin/env ruby

# An interactive ruby console for exploring the Jenkins API

require 'bundler/setup'
require 'dotenv'
require 'jenkins_api_client'
require 'pry'

Dotenv.load!

@client = JenkinsApi::Client.new(:server_ip => ENV['JENKINS_SERVER_IP'],
                                 :server_port => ENV['JENKINS_SERVER_PORT'],
                                 :username => ENV['JENKINS_USERNAME'],
                                 :password => ENV['JENKINS_PASSWORD'])

# @client contains a configured instance of the JenkinsApi::Client class
binding.pry
