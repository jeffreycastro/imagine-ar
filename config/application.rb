require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ImagineAR
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Singapore'

    config.assets.paths << Rails.root.join("app", "assets", "fonts")

    # Mailer Settings (global)
    config.action_mailer.default_url_options = { :host => "localhost:3000" }
    config.action_mailer.perform_deliveries = true
    config.action_mailer.delivery_method = :smtp #:sendmail #:smtp
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.smtp_settings = {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :user_name            => 'info.imaginear@gmail.com',
      :password             => '1Maginear2017!',
      :authentication       => 'plain',
      :enable_starttls_auto => true
    }

    # config.action_mailer.default_url_options = { :host => "localhost:3000" }
    # config.action_mailer.perform_deliveries = true
    # config.action_mailer.delivery_method = :smtp #:sendmail #:smtp
    # config.action_mailer.raise_delivery_errors = true
    # config.action_mailer.smtp_settings = {
    #   :address              => "mail.imagine-ar.com",
    #   :port                 => 465,
    #   :user_name            => 'info@imagine-ar.com',
    #   :password             => '1Maginear2017!',
    #   :authentication       => 'plain',
    #   :enable_starttls_auto => true
    # }
  end
end
