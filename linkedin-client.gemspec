# -*- encoding: utf-8 -*-
require File.expand_path('../lib/linkedin-client/version', __FILE__)

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'linkedin-client'
  s.version       = ::LinkedIn::VERSION
  s.authors       = ['Henry Cai']
  s.email         = ['minghangcai@gmail.com']
  s.description   = %q{LinkedIn OAuth2 client}
  s.summary       = %q{
    This is a LinkedIn OAuth2 client implemented on Saddle
  }
  s.homepage      = 'https://github.com/hcai/linkedin-client.git'
  s.license       = 'MIT'

  s.require_path  = 'lib'
  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.add_dependency 'saddle', '~> 0.0.46'
  s.add_dependency 'simple_oauth', '~> 0.2.0'
end
