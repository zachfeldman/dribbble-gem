$LOAD_PATH.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name              = "dribbble"
  s.version           = "0.0.2"
  s.platform          = Gem::Platform::RUBY
  s.author            = "Zach Feldman"
  s.email             = ["zachfeldman@gmail.com"]
  s.homepage          = "https://github.com/nycda-staff/dribbble"
  s.summary           = "Easily access the Dribbble API."
  s.description       = "Easily access the Dribbble API. This gem exactly mirrors the documentation."
  s.license           = "GPLv2"
  
  s.required_ruby_version = ">= 1.9.2"

  s.files = "lib/dribbble.rb"
  s.files += Dir["lib/dribbble/**"]
  
end
