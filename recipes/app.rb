#!/usr/bin/env ruby
# encoding: utf-8
#
# Recipe:: python_packages
# Cookbook:: graphiteeagle
# Author:: Greg Albrecht <oss@undef.net>
# Copyright:: Copyright 2017 Greg Albrecht
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-graphiteeagle
#


include_recipe 'poise-python'


python_virtualenv node['graphiteeagle']['virtualenv'] do
  action :nothing
  subscribes :create, 'git[sync graphiteeagle]', :immediately
end

# Will only re-install when the git repository updates.
python_execute 'install graphiteeagle' do
  action :nothing
  command '-m pip install .'
  cwd node['graphiteeagle']['install_path']
  virtualenv node['graphiteeagle']['virtualenv']
  notifies :restart, 'supervisor_service[graphiteeagle]', :delayed
  subscribes :run, 'git[sync graphiteeagle]'
end

git 'sync graphiteeagle' do
  destination node['graphiteeagle']['install_path']
  repository node['graphiteeagle']['git_repo']
  revision node['graphiteeagle']['git_revision']
  #notifies :run, 'python_execute[install graphiteeagle]', :immediately
end
