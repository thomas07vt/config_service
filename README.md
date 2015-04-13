### config_service


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

