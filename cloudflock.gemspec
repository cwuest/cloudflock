$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'cloudflock'

Gem::Specification.new do |s|
  s.name = 'cloudflock'
  s.version = CloudFlock::VERSION

  s.description = 'CloudFlock is a library and toolchain focused on migration'
  s.summary     = 'Unix migration automation'
  s.authors     = ['Chris Wuest']
  s.email       = 'chris@chriswuest.com'
  s.homepage    = 'http://github.com/cwuest/cloudflock'

  s.add_runtime_dependency('fog-json', '>= 0')
  s.add_runtime_dependency('fog', '~> 1.22', '>= 1.22.1')
  s.add_runtime_dependency('cpe', '~> 0.5', '>= 0.5.0')
  s.add_runtime_dependency('console-glitter', '~>0.2', '>=0.2.1')

  s.files = `git ls-files lib`.split("\n")
  s.files += `git ls-files bin`.split("\n")
  s.files.reject! { |f| f.include?('.dev') }

  s.executables = `git ls-files bin`.split("\n")
  s.executables.map!    { |f| f.gsub!(/^bin\//, '') }
  s.executables.reject! { |f| f.include?('.dev') }

  s.license = 'Apache 2.0'
end
