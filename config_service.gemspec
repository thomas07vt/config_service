Gem::Specification.new do |s|
  s.name        = 'configger_service'
  s.version     = '1.0.5'
  s.summary     = "A gem to load config yml files"
  s.description = "A gem to load config yml files"
  s.authors     = ['Linh Chau', 'John Thomas']
  s.email       = 'thomas07vt@gmail.com'
  s.files       = [
                    './config_service.gemspec', 'lib/config_service.rb',
                    'lib/services/config_service.rb', 'lib/utils/hash_utils.rb'
                  ]
  s.homepage    = 'https://github.com/thomas07vt/configger_service'
  s.license     = 'MIT'
  s.add_runtime_dependency 'logging'
  s.add_runtime_dependency 'activesupport'
  s.add_development_dependency 'rspec', '~> 3.1'
end
