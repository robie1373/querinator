# -*- encoding: utf-8 -*-
require File.expand_path('../lib/querinator/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Robie Lutsey"]
  gem.email         = ["robie1373@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "querinator"
  gem.require_paths = ["lib"]
  gem.version       = Querinator::VERSION

  gem.add_development_dependency 'rb-fsevent', '~>0.9.1'
  gem.add_development_dependency 'minitest-reporters', '0.9.0'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'guard-minitest'
  gem.add_development_dependency 'growl'
  gem.add_development_dependency 'turn'
end
