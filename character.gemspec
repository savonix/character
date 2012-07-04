$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "character/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "character"
  s.version     = Character::VERSION
  s.authors     = ["Albert Lash"]
  s.email       = ["albert.lash@gmail.com"]
  s.homepage    = "http://www.docunext.com"
  s.summary     = "Character supports user profiles."
  s.description = "Character is alpha."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.markdown"]

  s.add_development_dependency 'rspec-rails', '~> 2.6'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails', '>= 1.2.0'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'devise'
  s.add_dependency "rails", "~> 3.1"
end
