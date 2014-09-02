# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'let_us_hide/version'

Gem::Specification.new do |spec|
  spec.name          = 'let_us_hide'
  spec.version       = LetUsHide::VERSION
  spec.authors       = ['Kevin']
  spec.email         = ['kevin.pheasey@gmail.com']
  spec.summary       = %q{Simple Gem to work with the letushide.com api.}
  spec.description   = %q{Simple Gem to work with the letushide.com api.}
  spec.homepage      = ''
  spec.license       = 'GPL2'

  spec.files         = `git ls-files -z`.split('\x0')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'json', '~> 1.8.1'
  spec.add_dependency 'confiture', '~> 0.1.4'
end
