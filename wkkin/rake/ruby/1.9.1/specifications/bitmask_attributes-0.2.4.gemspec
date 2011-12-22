# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bitmask_attributes"
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joel Moss"]
  s.date = "2011-11-23"
  s.email = "joel@developwithstyle.com"
  s.homepage = "http://github.com/joelmoss/bitmask_attributes"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.12"
  s.summary = "Simple bitmask attribute support for ActiveRecord"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.0"])
    else
      s.add_dependency(%q<activerecord>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<activerecord>, ["~> 3.0"])
  end
end
