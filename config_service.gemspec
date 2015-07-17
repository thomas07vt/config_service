Gem::Specification.new do |s|
  s.name        = 'config_service'
  s.version     = '1.0.4'
  s.summary     = "A gem to load config yml files"
  s.description = "A gem to load config yml files"
  s.authors     = ['Linh Chau']
  s.email       = 'chauhonglinh@gmail.com'
  s.files       = [
                    './config_service.gemspec', 'lib/config_service.rb',
                    'lib/services/config_service.rb', 'lib/utils/hash_utils.rb'
                  ]
  s.homepage    = 'https://github.com/linhchauatl/config_service'
  s.license     = 'MIT'
  s.add_runtime_dependency 'logging'
  s.add_runtime_dependency 'activesupport'
  s.add_development_dependency 'rspec', '~> 3.1'
end
