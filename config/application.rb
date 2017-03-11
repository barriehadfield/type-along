require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Typealong
  class Application < Rails::Application
    config.eager_load_paths += %W(#{config.root}/app/hyperloop/models)
    config.autoload_paths += %W(#{config.root}/app/hyperloop/models)
    config.eager_load_paths += %W(#{config.root}/app/hyperloop/operations)
    config.autoload_paths += %W(#{config.root}/app/hyperloop/operations)
    config.assets.paths << ::Rails.root.join('app', 'hyperloop').to_s
    config.assets.paths << ::Rails.root.join('public', 'packs').to_s
    config.react.server_renderer_options = {
        files: ["hyperloop.js"] # if true, console.* will be replayed client-side
      }
  end
end
