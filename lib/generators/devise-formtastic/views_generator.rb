require "generators/devise/views_generator"

module Devise
  module Generators
    class FormtasticGenerator < Rails::Generators::Base #:nodoc:
      include Devise::Generators::ViewPathTemplates
      source_root File.expand_path("../../../../app/views/devise", __FILE__)
      desc "Copies Formtastic enabled views to your application."
      hide!
    end

    class SharedViewsGenerator < Rails::Generators::Base #:nodoc:
      include Devise::Generators::ViewPathTemplates
      source_root File.expand_path("../../../../app/views/devise", __FILE__)
      desc "Copies shared Formtastic enabled views to your application."
      hide!

      # Override copy_views to just copy mailer and shared.
      def copy_views
        view_directory :shared
      end
    end

    class ViewsGenerator < Rails::Generators::Base
      remove_hook_for :form_builder
      hook_for :form_builder, aliases: "-b",
                              desc: "Form builder to be used",
                              default: defined?(Formtastic) ? "formtastic" : "form_for"
    end
  end
end
