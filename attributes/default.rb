# graphiteeagle default Attributes.
#
# Attributes:: default
# Cookbook:: graphiteeagle
# Author:: Greg Albrecht <oss@undef.net>
# Copyright:: Copyright 2017 Greg Albrecht
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-graphiteeagle
#


default['graphiteeagle']['git_revision'] = 'master'
default['graphiteeagle']['install_path'] = '/srv/graphiteeagle'
default['graphiteeagle']['virtualenv'] = '/srv/graphiteeagle/.virtualenv'
default['graphiteeagle']['git_repo'] = 'https://github.com/ampledata/graphiteeagle.git'

default['graphiteeagle']['carbon_host'] = '172.17.2.80'
default['graphiteeagle']['eagle_host'] = '172.17.2.105'
default['graphiteeagle']['interval'] = 300
