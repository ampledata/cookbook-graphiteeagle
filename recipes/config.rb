#!/usr/bin/env ruby
# encoding: utf-8
#
# Recipe:: config
# Cookbook:: graphiteeagle
# Author:: Greg Albrecht <oss@undef.net>
# Copyright:: Copyright 2017 Greg Albrecht
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-graphiteeagle
#

require 'json'

template node['graphiteeagle']['config_path'] do
  variables graphiteeagle_config: JSON.pretty_generate(node['graphiteeagle'])
  notifies :restart, 'supervisor_service[graphiteeagle]', :delayed
end
