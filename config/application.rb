require File.expand_path('../boot', __FILE__)
require 'rails/all'
require "magic_multi_connections"

Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    config.time_zone = 'Central Time (US & Canada)'

    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :en

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
