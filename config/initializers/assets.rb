# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( bx_loader.gif )
#Rails.application.config.assets.precompile += %w (spree_admin.css)
Rails.application.config.assets.precompile += %w( logo/spree_50.png )
Rails.application.config.assets.precompile += %w( spree/fancy/logo-white.png )
Rails.application.config.assets.precompile += %w( spree/fancy/fancy.css )
Rails.application.config.assets.precompile += %w( icons.svg icons.ttf icons.eot icons.woff )
Rails.application.config.assets.precompile += %w( images/bx_loader.gif images/controls.png )