# -*- encoding: utf-8 -*-
# stub: composite_primary_keys 8.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "composite_primary_keys".freeze
  s.version = "8.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Charlie Savage".freeze]
  s.date = "2015-12-13"
  s.description = "Composite key support for ActiveRecord".freeze
  s.homepage = "https://github.com/composite-primary-keys/composite_primary_keys".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Composite key support for ActiveRecord".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, ["~> 4.2.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<pg>.freeze, [">= 0"])
      s.add_development_dependency(%q<mysql2>.freeze, ["= 0.3.20"])
    else
      s.add_dependency(%q<activerecord>.freeze, ["~> 4.2.0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<pg>.freeze, [">= 0"])
      s.add_dependency(%q<mysql2>.freeze, ["= 0.3.20"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, ["~> 4.2.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<pg>.freeze, [">= 0"])
    s.add_dependency(%q<mysql2>.freeze, ["= 0.3.20"])
  end
end
