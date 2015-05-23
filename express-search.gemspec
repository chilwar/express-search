# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'express/search/version'

Gem::Specification.new do |spec|
  spec.name          = "express-search"
  spec.version       = Express::Search::VERSION
  spec.authors       = ["chilwar"]
  spec.email         = ["136744469@qq.com"]
  spec.date          = "2015-05-05"

  spec.summary       = %q{used for china express search}
  spec.description   = %q{used for china express search}
  spec.homepage      = "http://github.com/chilwar/express-search"
  spec.license       = "MIT"

  spec.files         = [
                         ".rspec",
                         ".travis.yml",
                         "CODE_OF_CONDUCT.md",
                         "Gemfile",
                         "Gemfile.lock",
                         "LICENSE.txt",
                         "README.md",
                         "Rakefile",
                         "express-search.gemspec",
                         "bin/console",
                         "bin/setup",
                         "lib/express/search.rb",
                         "lib/express/search/company.rb",
                         "lib/express/search/result.rb",
                         "lib/express/search/version.rb",
                         "spec/express/search_spec.rb",
                         "spec/express/search/company_spec.rb",
                         "spec/spec_helper.rb"
                       ]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  
  if spec.respond_to? :specification_version then
    spec.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      spec.add_development_dependency(%q<rspec>, ["~> 3.2.0"])
      spec.add_development_dependency(%q<webmock>, ["~> 1.21.0"])
    else
      spec.add_dependency(%q<rspec>, ["~> 3.2.0"])
      spec.add_dependency(%q<webmock>, ["~> 1.21.0"])
    end
  else
    spec.add_dependency(%q<rspec>, ["~> 3.2.0"])
    spec.add_dependency(%q<webmock>, ["~> 1.21.0"])
  end
end
