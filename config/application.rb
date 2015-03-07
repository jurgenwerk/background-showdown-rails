require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module BackgroundShowdownRails
  class Application < Rails::Application
    config.active_job.queue_adapter = :resque
  end
end
