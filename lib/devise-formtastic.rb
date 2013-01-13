require "rails"
require "devise"
require "formtastic"
require "devise-formtastic/version"

if defined?(Rails::Generators)
  require "generators/devise-formtastic/views_generator"
else
  require "devise-formtastic/engine"
end

module Devise
  module Formtastic
  end
end
