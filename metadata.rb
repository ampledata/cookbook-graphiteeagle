# encoding: utf-8

name             'graphiteeagle'
maintainer       'Greg Albrecht'
maintainer_email 'oss@undef.net'
license          'Apache License, Version 2.0'
description      'Installs/Configures graphiteeagle'
long_description 'Installs/Configures graphiteeagle'
version IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.0.1'


depends 'poise-python'
depends 'application_python'
depends 'supervisor'
depends 'application_git'
