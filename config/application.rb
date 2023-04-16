require_relative "boot"

require "rails/all"
require 'pry'

Bundler.require(*Rails.groups)

module Quiz
  class Application < Rails::Application
    config.load_defaults 7.0
    config.middleware.use ActionDispatch::Session::CookieStore
    config.i18n.default_locale = :ja
    config.time_zone = "Tokyo"
  end
end