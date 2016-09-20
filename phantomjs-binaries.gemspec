# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "phantomjs-binaries/version"

Gem::Specification.new do |s|
  s.name        = "phantomjs-binaries"
  s.version     = PhantomjsBinaries::VERSION
  s.authors     = ["Anton Vaynshtok"]
  s.email       = ["avaynshtok@gmail.com"]
  s.homepage    = "https://github.com/avaynshtok/phantomjs-binaries"
  s.summary     = %q{phantom.js binaries wrapped as a ruby gem}
  s.description = %q{This package prevents you from having to install phantom.js independently outside your app.}

  s.rubyforge_project = "phantomjs-binaries"

  s.license = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "sys-uname", "0.9.0"
end
