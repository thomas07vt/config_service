require 'active_support'
require 'active_support/core_ext'

class ConfigService
  class << self
    def load_config(config_file_name)
      app_root = (defined? APP_ROOT)? APP_ROOT : File.expand_path('.')
      
      config_file = nil
      ['conf', 'config'].each do |sub_path|
        if File.exist?("#{app_root}/#{sub_path}/#{config_file_name}")
          config_file = "#{app_root}/#{sub_path}/#{config_file_name}"
          break
        end
      end
      
      raise("#{Time.now.strftime("%m/%d/%Y %H:%M:%S.%3N %z")} ERROR: ConfigService#load_config #{config_file_name} file not found.") unless config_file

      HashUtils.hash_to_open_struct(YAML.load_file(config_file))
    end

    def environment
      return Rails.env if defined? Rails
      return ENV['RACK_ENV'] if ENV['RACK_ENV'].present?
      'development'
    rescue => error
      'development'
    end
  end # class methods
end