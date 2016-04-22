# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/revision/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruboty-revision'
  spec.version       = Ruboty::Revision::VERSION
  spec.authors       = ['Naoto Takai']
  spec.email         = ['takai.naoto@mwed.co.jp']

  spec.summary       = 'Show the revision deployed.'
  spec.description   = 'A ruboty-plguin to show the revision deployed.'
  spec.homepage      = 'https://github.com/mwed/ruboty-revision'
  spec.license       = 'Apache License, Version 2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'ruboty'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
end
