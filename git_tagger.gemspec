# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git_tagger/version'

Gem::Specification.new do |spec|
  spec.name          = "git_tagger"
  spec.version       = GitTagger::VERSION
  spec.authors       = ["Eric Schlange"]
  spec.email         = ["eric.schlange@gmail.com"]
  spec.summary       = %q{expedites the git tagging procedure and updating a changelog for Rails projects and Gems}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3.0"
  spec.add_development_dependency "timecop", "~> 0.7.4"
  spec.add_development_dependency "simplecov", "~> 0.10.0"
end
