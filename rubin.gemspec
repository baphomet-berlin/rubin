$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rubin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rubin"
  s.version     = Rubin::VERSION
  s.authors     = [""]
  s.email       = ["cbrandolino@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Rubin."
  s.description = "TODO: Description of Rubin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency "embedly", "~> 1.9.1"
  s.add_dependency "paperclip", "~> 4.3"

  s.add_development_dependency "sqlite3"
end
