# -*- encoding: UTF-8 -*-

$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'ext_rails_shim/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'ext_rails_shim'
  s.version     = ExtRailsShim::VERSION
  s.authors     = ['Ozawa Sakuro']
  s.homepage    = 'https://github.com/sakuro/ext_rails_shim'
  s.summary     = 'Minimal intermediation between Rails 3.1+ and ExtJS 4'

  s.files = Dir['{app,config,lib}/**/*'] + ['GPLv3', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 3.1'
end
