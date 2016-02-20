# -*- encoding: utf-8 -*-
# stub: rails-assets-Bootflat 2.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-Bootflat"
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["rails-assets.org"]
  s.date = "2015-12-16"
  s.description = "BOOTFLAT is an open source Flat UI KIT based on Bootstrap 3.2.0 CSS framework. It provides a faster, easier and less repetitive way for web developers to create elegant web apps."
  s.homepage = "http://bootflat.github.io/"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "BOOTFLAT is an open source Flat UI KIT based on Bootstrap 3.2.0 CSS framework. It provides a faster, easier and less repetitive way for web developers to create elegant web apps."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
