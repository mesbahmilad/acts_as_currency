$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_currency/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_currency"
  s.version     = ActsAsCurrency::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ActsAsCurrency."
  s.description = "TODO: Description of ActsAsCurrency."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.3"

  s.add_development_dependency "rspec"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "meta_request"
  s.add_development_dependency "binding_of_caller"
  s.add_development_dependency 'pry'
  s.add_development_dependency 'pry-debugger'
end
