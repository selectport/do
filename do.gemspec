# -*- encoding: utf-8 -*-
require File.expand_path('../lib/do/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Davide D'Agostino"]
  gem.email         = ["d.dagostino@lipsiasoft.com"]
  gem.description   = %q[DO is a thin framework useful to manage remote servers through ssh.]
  gem.summary       = %q[DO is a thin framework useful to manage remote servers through ssh.]
  gem.homepage      = 'https://github.com/daddye/do'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "do"
  gem.require_paths = ['lib']
  gem.version       = DO::VERSION
  gem.add_dependency "net-ssh",  ">2.2.0"
  gem.add_dependency "net-sftp", ">2.0.5"

end
