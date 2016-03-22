require 'rails'

module JwPlayerRails
  class Engine < ::Rails::Engine
    initializer "precompile", :group => :all do |app|
      app.config.assets.precompile << "jwplayer_7.3.4.js"
      app.config.assets.precompile << "flash_7.3.4.swf"
    end

    initializer "helper" do |app|
      ActiveSupport.on_load(:action_view) do
        include Helper
      end
    end
  end
end