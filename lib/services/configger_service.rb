
class ConfiggerService
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
      ENV['RAILS_ENV'] || ENV['RACK_ENV'] || 'development'
    end
  end # class methods
end

# Backward compatibility
ConfigService = ConfiggerService

