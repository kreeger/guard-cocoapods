# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'guard/cocoapods'

Gem::Specification.new do |spec|
  spec.name          = "guard-cocoapods"
  spec.version       = Guard::CocoaPods::VERSION
  spec.authors       = ["Ben Kreeger"]
  spec.email         = ["ben@kree.gr"]
  spec.description   = 'A guard plugin for CocoaPods.'
  spec.summary       = 'A guard plugin for CocoaPods.'
  spec.homepage      = 'https://github.com/kreeger/guard-cocoapods'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'guard', '~> 1.8.1'
  spec.add_development_dependency 'rake', '~> 10.0.0'
end
