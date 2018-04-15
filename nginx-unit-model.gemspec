# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nginx/unit/model/version"

Gem::Specification.new do |spec|
  spec.name          = "nginx-unit-model"
  spec.version       = Nginx::Unit::Model::VERSION
  spec.authors       = ["Thomas Volkmar Worm"]
  spec.email         = ["tvw@s4r.de"]

  spec.summary       = %q{A Ruby model around NGINX Unit configuration.}
  spec.description   = %q{Read and change the NGINX Unit configuration through a model.}
  spec.homepage      = "https://github.com/tvw/nginx-unit-model"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "nohost at the moment"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
