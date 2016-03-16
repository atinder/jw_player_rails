# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jw_player_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "jw_player_rails"
  spec.version       = JwPlayerRails::VERSION
  spec.authors       = ["Atinder Singh"]
  spec.email         = ["atinder90.a@gmail.com"]

  spec.summary       = %q{Self hosted JW Player}
  spec.description   = %q{Deals with adding jw player to asset pipeline and providing helper to embed videos/playlists}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
