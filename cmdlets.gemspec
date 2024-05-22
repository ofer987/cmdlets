# frozen_string_literal: true

require_relative 'lib/cmdlets/version'

Gem::Specification.new do |spec|
  spec.name = 'cmdlets'
  spec.version = CmdLets::VERSION
  spec.authors = ['Dan Jakob Ofer']
  spec.email = ['dan@ofer.to']

  spec.summary = 'Useful CLI Tools'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.1.0'
  spec.metadata['rubygems_mfa_required'] = 'true'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'curses', '~> 1.4.5'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
