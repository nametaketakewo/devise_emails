$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devise_emails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devise_emails"
  s.version     = DeviseEmails::VERSION
  s.authors     = ["Harutaka Takeuchi"]
  s.email       = ["nametaketakewo@icloud.com"]
  s.homepage    = "https://github.com/nametaketakewo/devise_emails"
  s.summary     = "Devise Emails"
  s.description = "Enable to manage multiple emails in your Rails App using Devise."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "devise", ">= 4.0", "< 5"
  s.add_dependency "rails", ">= 4.2", "< 6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "byebug"
end
