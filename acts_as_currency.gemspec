$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_currency/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_currency"
  s.version     = ActsAsCurrency::VERSION
  s.authors     = ["Milad Mesbah"]
  s.email       = ["milad@pendarlabs.com"]
  s.homepage    = "http://www.pendarlabs.com"
  s.summary     = "A plugin to turn any integer field into a currency, great for keeping accuracy on the fields."
  s.description = "Not much"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  
  s.add_development_dependency "rspec"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "meta_request"
  s.add_development_dependency "binding_of_caller"
  s.add_development_dependency 'pry'
  s.add_development_dependency 'pry-debugger'
end
