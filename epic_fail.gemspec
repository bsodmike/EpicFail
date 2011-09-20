$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "epic_fail/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "epic_fail"
  s.version     = EpicFail::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of EpicFail."
  s.description = "TODO: Description of EpicFail."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "thin"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rb-fsevent"
  s.add_development_dependency "yard"
  s.add_development_dependency "pry"
end
