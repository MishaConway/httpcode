# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'httpcode/version'

Gem::Specification.new do |gem|
  gem.name          = "httpcode"
  gem.version       = Httpcode::VERSION
  gem.authors       = ["Misha Conway"]
  gem.email         = ["MishaAConway@gmail.com"]


  gem.summary       = %q{Allows you to specify http status codes by name rather than magic numbers for more readable code.
                       Go to https://github.com/MishaConway/httpcode for detailed examples.}
  gem.homepage      = "https://github.com/MishaConway/httpcode"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'activesupport'
end
