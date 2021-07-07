require 'rails/railtie'

module TurboForm
  module Rails
    class Railtie < ::Rails::Railtie
      initializer "cells.rails_extensions" do |app|
        ActiveSupport.on_load(:action_view) do
          self.class_eval do
            include TurboForm::RailsExtensions::ActionView
          end
        end
      end
    end
  end
end
