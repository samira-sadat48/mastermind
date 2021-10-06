require_relative 'lib/mastermind/version'

Gem::Specification.new do |spec|
  spec.name          = "mastermind"
  spec.version       = Mastermind::VERSION
  spec.authors       = ["samira-sadat48"]
  spec.email         = ["samira.sadat48@gmail.com"]

  spec.summary       = "Mastermin Game"
  spec.homepage      = "https://github.com/samira-sadat48/mastermind"
  spec.license       = "MIT"

  spec.add_development_dependency "rspec"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake"
end
