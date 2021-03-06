require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LimiRation
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.i18n.default_locale = :ja

    # エラー時にレイアウトが崩れる問題を修正
    config.action_view.field_error_proc = Proc.new do |html_tag, instance|
      %Q(#{html_tag}).html_safe
    end
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
