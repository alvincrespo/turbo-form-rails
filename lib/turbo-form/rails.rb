require 'active_support/concern'

module TurboForm
  def self.rails_version
    Gem::Version.new(ActionPack::VERSION::STRING)
  end

  module RailsExtensions
    module ActionView
      def turbo_confirm(title = nil, path = nil, options = {}, &block)
        link_to(title, path, options, &block)
      end

      def turbo_link(title = nil, path = nil, options = {}, &block)
        link_to(title, path, options, &block)
      end
    end
  end
end
