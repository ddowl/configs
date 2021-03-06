# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "os"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["rdp", "David McCullars"]
  s.date = "2017-02-20"
  s.description = "The OS gem allows for some useful and easy functions, like OS.windows? (=> true or false) OS.bits ( => 32 or 64) etc\""
  s.email = "rogerpack2005@gmail.com"
  s.extra_rdoc_files = ["ChangeLog", "LICENSE", "README.rdoc"]
  s.files = ["ChangeLog", "LICENSE", "README.rdoc"]
  s.homepage = "http://github.com/rdp/os"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Simple and easy way to know if you're on windows or not (reliably), as well as how many bits the OS is, etc."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.0"])
    else
      s.add_dependency(%q<rspec>, [">= 2.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.0"])
  end
end
