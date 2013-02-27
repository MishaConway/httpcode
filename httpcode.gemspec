# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'httpcode/version'

Gem::Specification.new do |gem|
  gem.name          = "httpcode"
  gem.version       = Httpcode::VERSION
  gem.authors       = ["Misha Conway"]
  gem.email         = ["MishaAConway@gmail.com"]


  gem.summary       = "Allows you to specify http status codes by name rather than magic numbers for more readable code.\n
                          Example:  HttpStatus.created.code  or HttpStatus.not_modified.code\n

                          status = HttpStatus.accepted\n
                            => #<StatusCode:0x007fb85403e1c0 @code=202, @message=\"Accepted\", @symbol=:accepted>\n
                          status.code\n
                            => 202\n
                          status.message\n
                            => \"Accepted\"\n
                          status.code_and_message\n
                            => [202, \"Accepted\"]\n

                          If you know the number of the status code, but are not sure what function to call you can use from_id\n
                          Example:\n
                              We know we want to use the 200 code, but not sure what function to call.\n
                              status = HttpStatus.from_code 200\n
                                => #<StatusCode:0x007fb85403e2b0 @code=200, @message=\"OK\", @symbol=:ok>\n
                              status.symbol\n
                                => :ok\n
                               \n
                              Now we know that we can call HttpStatus.ok\n


                              "
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
