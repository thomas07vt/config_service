### config_service
[![Gem Version](https://badge.fury.io/rb/config_service.svg)](http://badge.fury.io/rb/config_service)

This is [**Ruby**](https://www.ruby-lang.org/) gem that is used to load config yml files.<br/>
It can be used in any Ruby programs, Rails or others that have YAML files in the directories APP_ROOT/conf or APP_ROOT/config.<br/>

### Usage

1 - Bundler

In the **Gemfile** of your application, write:
```
gem 'config_service'
```
then calls:
```
bundle
```

2 - Gem
```
gem install config_service
```

3 - Build the gem locally:
```
git clone git@github.com:linhchauatl/config_service.git

cd config_service

gem build config_service.gemspec

gem install config_service-<VERSION>.gem
```

In your code:
```ruby
require 'config_service'
```

Afterward you can call:<br/>
```ruby
ConfigService.load_config(<YAML FILENAME>)
```

<br/> The YAML config file must exist in either APP_ROOT/conf or APP_ROOT/config.<br/>

You can also call `ConfigService.environment` to detect the current Rails environment ( based on Rails.env) or Application environment (based on ENV['RACK_ENV']).</br>

### Once you load the configuration, you can use it with Hash notion or with Object notion

For example:
```ruby
config = ConfigService.load_config('memcached.yml')

#Then you can get configuration for different environment using any of these commands:
dev_config = config['development']
# or
dev_config = config.development

# You can get current environment based on RAILS_ENV (Rails.env) or ENV['RACK_ENV']
current_env_config = config[ConfigService.environment]
# or
current_env_config = config.send(ConfigService.environment)


# You can use any deep-nested level
dev_host = config.development.host
#or
dev_host = config['developement']['host']

```

