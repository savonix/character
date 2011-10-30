$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "character/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "character"
  s.version     = Character::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Character."
  s.description = "TODO: Description of Character."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_development_dependency 'launchy'
  s.add_development_dependency 'rspec-rails', '~> 2.6'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'rails', '~> 3.1.0'
  s.add_development_dependency 'factory_girl_rails', '>= 1.2.0'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'devise'
  s.add_dependency "rails", "~> 3.1.1"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mysql2"
end
