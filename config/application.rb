require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Reishitea
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # Simple Pusher configuration (this can be migrated to a local class / helper
    #  if the config grows complex)
    config.x.pusher.url     = ENV['PUSHER_URL']
    config.x.pusher.appkey  = ENV['PUSHER_KEY']
    config.x.pusher.secret  = ENV['PUSHER_SECRET']
    config.x.pusher.appid   = ENV['PUSHER_APPID']
    config.x.pusher.channel = 'reishitea_' + Rails.env
  end
end
