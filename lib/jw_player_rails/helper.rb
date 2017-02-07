module JwPlayerRails
  module Helper
    DEFAULT_OPTIONS = {
      id: "jwplayer6",
      flashplayer: "/assets/flash_7.9.0.swf"
    }

    # Includes JWPlayer javascript library
    def jwplayer_assets
      javascript_include_tag "jwplayer_7.9.0"
    end

    def jwplayer(options = {})
      options = DEFAULT_OPTIONS.merge(options)

      result = %Q{<div id='#{options[:id]}'>Player Loading....</div>
                  <script type='text/javascript'>
                    var #{options[:instance_var] || playerInstance} = jwplayer('#{options[:id]}').setup(#{options.except(:id, :instance_var).to_json});
                  </script>}

      result.respond_to?(:html_safe) ? result.html_safe : result
    end
  end
end