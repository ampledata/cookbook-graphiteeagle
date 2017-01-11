#!/usr/bin/env ruby
# encoding: utf-8
#
# Enables graphiteeagle service.
#
# Recipe:: service
# Cookbook:: graphiteeagle
# Author:: Greg Albrecht <oss@undef.net>
# Copyright:: Copyright 2017 Greg Albrecht
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-graphiteeagle
#


include_recipe 'supervisor'


graphiteeagle_path = File.join(
  node['graphiteeagle']['install_path'], '.virtualenv', 'bin', 'graphiteeagle'
)

service_cmd = [
  graphiteeagle_path,
  '-c', node['graphiteeagle']['carbon_host'],
  '-e', node['graphiteeagle']['eagle_host'],
  '-i', node['graphiteeagle']['interval']
].join(' ')

supervisor_service 'graphiteeagle' do
  command service_cmd
  action :enable
end
