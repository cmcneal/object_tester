# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'object_tester/version'

Gem::Specification.new do |spec|
  spec.name          = "object_tester"
  spec.version       = ObjectTester::VERSION
  spec.authors       = ["Clancey McNeal"]
  spec.email         = ["Clancey@injinia.com"]
  spec.description   = %q{Cucumber, Watir, PageObjects, WebDriver, Sinatra}
  spec.summary       = %q{Write tests quickly}
  spec.homepage      = "http://github.com/cmcneal/"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'cucmumber', '>= 1.2.0'
  spec.add_dependency 'page-object', '>= 0.8.0'

end
