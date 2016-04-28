Gem::Specification.new do |s|
  s.name        = 'configger_service'
  s.version     = '1.1.0'
  s.summary     = "A gem to load config yml files"
  s.description = "A gem to load config yml files"
  s.authors     = ['Linh Chau', 'John Thomas']
  s.email       = 'thomas07@vt.edu'
  s.files       = [
                    './configger_service.gemspec', 'lib/configger_service.rb',
                    'lib/services/configger_service.rb', 'lib/utils/hash_utils.rb'
                  ]
  s.homepage    = 'https://github.com/thomas07vt/configger_service'
  s.license     = 'MIT'

  s.add_development_dependency 'rspec', '~> 3.1'
end

