lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'turbo-form/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "turbo-form"
  spec.version       = TurboForm::Rails::VERSION
  spec.authors       = ["Alvin Crespo"]
  spec.email         = ["alvin.crespo@gmail.com"]
  spec.license       = "MIT"

  spec.summary       = %q{Helpers for use with turbo-form.}
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rails"
  spec.add_development_dependency "appraisal"
  spec.add_development_dependency "pry-byebug"
end
