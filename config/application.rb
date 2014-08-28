require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Games
  class Application < Rails::Application
 
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
	config.exceptions_app = self.routes
	
	config.cache_store = :memory_store
	config.middleware.swap(ActionDispatch::Static, Rack::Zippy::AssetServer)
	
  end
end
