# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-Bootflat/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-Bootflat"
  spec.version       = RailsAssetsBootflat::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "BOOTFLAT is an open source Flat UI KIT based on Bootstrap 3.2.0 CSS framework. It provides a faster, easier and less repetitive way for web developers to create elegant web apps."
  spec.summary       = "BOOTFLAT is an open source Flat UI KIT based on Bootstrap 3.2.0 CSS framework. It provides a faster, easier and less repetitive way for web developers to create elegant web apps."
  spec.homepage      = "http://bootflat.github.io/"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
