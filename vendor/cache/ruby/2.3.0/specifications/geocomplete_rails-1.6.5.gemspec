# -*- encoding: utf-8 -*-
# stub: geocomplete_rails 1.6.5 ruby lib

Gem::Specification.new do |s|
  s.name = "geocomplete_rails"
  s.version = "1.6.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Guy Israeli", "Justin Reese"]
  s.date = "2015-07-08"
  s.description = "Wrapper for geocomplete.js - a jQuery Geocoding and Places Autocomplete Plugin"
  s.homepage = "https://github.com/guyisra/geocomplete_rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "jQuery Geocoding and Places Autocomplete Plugin"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<railties>, [">= 3.1"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<railties>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<railties>, [">= 3.1"])
  end
end
