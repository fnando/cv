# -*- encoding: utf-8 -*-
require "./lib/cv/version"

Gem::Specification.new do |gem|
  gem.name          = "cv4r"
  gem.version       = CV::VERSION
  gem.authors       = ["Nando Vieira"]
  gem.email         = ["fnando.vieira@gmail.com"]
  gem.description   = "Create your CV in PDF format by using a YAML file."
  gem.summary       = gem.description
  gem.homepage      = "http://github.com/fnando/cv"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "thor"

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "pry-meta"
end
