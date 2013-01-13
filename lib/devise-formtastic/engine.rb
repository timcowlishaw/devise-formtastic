module Devise::Formtastic
  class Engine < Rails::Engine
    config.railties_order = [Devise::Formtastic::Engine, :main_app, :all]
  end
end
