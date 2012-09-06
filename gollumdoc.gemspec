lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
Gem::Specification.new do |s|
  s.name        = "gollumdoc"
  s.version     = "0.0.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["James Long"]
  s.email       = ["jlongster@jlongster.com"]
  s.summary     = "Patches the gollum wiki to host documentation better"
  s.description = "Patches the gollum wiki to host documentation better"
 
  s.required_rubygems_version = ">= 1.3.6"
 
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(README.md)
  s.executables  = ['gollumdoc']
  s.require_path = 'lib'
end
