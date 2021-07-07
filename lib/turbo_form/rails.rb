require 'active_support/concern'

module TurboForm
  DEFAULT_CONFIRM_OPTIONS = { method: :delete,
    data: { controller: "confirm",
            confirm_message: "Are you sure?" } }.freeze
  
  DEFAULT_LINK_OPTIONS = { method: :post,
                  data: { controller: "link-method" } }.freeze

  def self.rails_version
    Gem::Version.new(ActionPack::VERSION::STRING)
  end

  module RailsExtensions
    module ActionView
      def turbo_confirm(title = nil, path = nil, options = {}, &block)
        method = options.delete(:as)
        options = options.merge(DEFAULT_CONFIRM_OPTIONS)
    
        if method == "button"
          button_to(title, path, options, &block)
        else
          link_to(title, path, options, &block)
        end
      end

      def turbo_link(title = nil, path = nil, options = {}, &block)
        options = options.merge(DEFAULT_LINK_OPTIONS)
    
        link_to(title, path, options, &block)
      end
    end
  end
end
