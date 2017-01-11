#!/usr/bin/env ruby
# encoding: utf-8
#
# Recipe:: default
# Cookbook:: graphiteeagle
# Author:: Greg Albrecht <oss@undef.net>
# Copyright:: Copyright 2017 Greg Albrecht
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-graphiteeagle
#

include_recipe 'graphiteeagle::service'
include_recipe 'graphiteeagle::config'
include_recipe 'graphiteeagle::app'
