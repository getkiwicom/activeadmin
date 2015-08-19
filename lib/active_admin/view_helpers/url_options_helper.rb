module ActiveAdmin
  module ViewHelpers
    module UrlOptionsHelper
      def url_options_query_string
        # TODO use default_url_options
        url_option_keys = params.keys & ['locale']
        url_options = params.slice(*url_option_keys)
        url_options.any? ? '?' + url_options.to_query : ''
      end
    end
  end
end
