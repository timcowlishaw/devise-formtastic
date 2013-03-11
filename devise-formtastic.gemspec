# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise-formtastic/version'

Gem::Specification.new do |gem|
  gem.name          = "devise-formtastic"
  gem.version       = Devise::Formtastic::VERSION
  gem.authors       = ["Jari Jokinen"]
  gem.email         = ["info@jarijokinen.com"]
  gem.summary       = "Formtastic form builder for Devise."
  gem.description   = "Formtastic form builder for Devise with some extra features like full I18n support and dynamic page titles."
  gem.homepage      = "https://github.com/jarijokinen/devise-formtastic"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", "~> 4.0.0.beta"
  gem.add_dependency "devise", "~> 2.2.3"
  gem.add_dependency "formtastic", "~> 2.2.1"

  gem.add_development_dependency "sqlite3"
end
