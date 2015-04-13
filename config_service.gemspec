Gem::Specification.new do |s|
  s.name        = 'config_service'
  s.version     = '1.0.0'
  s.summary     = "A gem to load config yml files"
  s.description = "A gem to load config yml files"
  s.authors     = ['Linh Chau']
  s.email       = 'chauhonglinh@gmail.com'
  s.files       = [
                    './config_service.gemspec', 'lib/config_service.rb',
                    'lib/services/config_service.rb'
                  ]
  s.homepage    = 'https://github.com/linhchauatl/config_service'
  s.license     = 'MIT'
  s.add_runtime_dependency 'logging', '~> 0'
  s.add_runtime_dependency 'activesupport'
  s.add_development_dependency 'rspec', '~> 3.1'
end