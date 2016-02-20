# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-bootstrap-confirmation2/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-bootstrap-confirmation2"
  spec.version       = RailsAssetsBootstrapConfirmation2::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "Bootstrap plugin for on-place confirm boxes using Popover"
  spec.summary       = "Bootstrap plugin for on-place confirm boxes using Popover"
  spec.homepage      = "http://mistic100.github.io/Bootstrap-Confirmation"
  spec.license       = "Apache"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-bootstrap", ">= 3.2.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
