# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rabbithole/version'

Gem::Specification.new do |spec|
  spec.name          = "rabbithole"
  spec.version       = Rabbithole::VERSION
  spec.authors       = ["Michael Schaefermeyer"]
  spec.email         = ["mschaefermeyer@bleacherreport.com"]
  spec.description   = %q{Rabbithole encapsulate logic to trigger and run asyncronous jobs using RabbitMQ}
  spec.summary       = %q{Rabbithole encapsulate logic to trigger and run asyncronous jobs using RabbitMQ}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bunny", "~> 1.0.0"
  spec.add_dependency "settingslogic", "~> 2.0.9"
  spec.add_dependency "msgpack", "~> 0.5"
  spec.add_dependency "thor", "~> 0.18"
end
