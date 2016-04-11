#!/usr/bin/env ruby

require 'dotenv'
require 'jenkins_api_client'

Dotenv.load(File.join(File.dirname(File.dirname(__FILE__)), ".env")) || exit

@client = JenkinsApi::Client.new(:server_ip => ENV['JENKINS_SERVER_IP'],
                                 :server_port => ENV['JENKINS_SERVER_PORT'],
                                 :username => ENV['JENKINS_USERNAME'],
                                 :password => ENV['JENKINS_PASSWORD'])

@client.job.list_all.each do |job|
  puts "Found job: #{job}"
end

