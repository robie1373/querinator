# -*- encoding: utf-8 -*-
require File.expand_path('../lib/querinator/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Robie Lutsey"]
  gem.email         = ["robie1373@gmail.com"]
  gem.description   = %q{manages and presents flash card data}
  gem.summary       = %q{Will import JSON hashes of questions and asnwers, track times seen and times correct for each question.}
  gem.homepage      = "http://robie1373.github.com/querinator"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "querinator"
  gem.require_paths = ["lib"]
  gem.version       = Querinator::VERSION

  gem.add_development_dependency 'rb-fsevent', '~>0.9.1'
  gem.add_development_dependency 'minitest-reporters', '~>0.9.0'
  gem.add_development_dependency 'guard', '~>1.2.3'
  gem.add_development_dependency 'guard-minitest', '~>0.5.0'
  gem.add_development_dependency 'growl', '~>1.0.3'
  gem.add_development_dependency 'turn', '~>0.9.6'
end
