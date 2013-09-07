require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(:default, Rails.env)


module Omei
  class Application < Rails::Application
    # Enable the asset pipeline
    config.assets.precompile += ['website/all.css', 'admin/admin.css', 'website/all.js', 'admin/admin.js', 'admin/seat_table.js']

    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'local_env.yml')
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value
      end if File.exists?(env_file)
    end

  end
end
