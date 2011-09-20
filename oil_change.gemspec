$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "oil_change/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "oil_change"
  s.version     = OilChange::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of OilChange."
  s.description = "TODO: Description of OilChange."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.1.0"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "thin"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rb-fsevent"
  s.add_development_dependency "yard"
  s.add_development_dependency "pry"
end
