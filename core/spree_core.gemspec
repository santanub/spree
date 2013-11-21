# encoding: UTF-8
version = File.read(File.expand_path("../../SPREE_VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_core'
  s.version     = version
  s.summary     = 'Core e-commerce functionality for the Spree project.'
  s.description = 'Required dependency for Spree'

  s.required_ruby_version = '>= 1.8.7'
  s.author      = 'Sean Schofield'
  s.email       = 'sean@spreecommerce.com'
  s.homepage    = 'http://spreecommerce.com'
  s.license     = %q{BSD-3}
  s.rubyforge_project = 'spree_core'

  s.files        = Dir['LICENSE', 'README.md', 'app/**/*', 'config/**/*', 'lib/**/*', 'db/**/*', 'vendor/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'acts_as_list', '= 0.1.4'
  s.add_dependency 'awesome_nested_set', '2.1.5'

  # This gem dependency is frozen ON PURPOSE to 2.1.4!!
  # This is because 2.2.0 uses jQuery 1.9 which breaks the jquery.horizontalNav
  # plugin that we are using in the admin backend.
  # Oh well. Time to break it. Too bad so sad. RSC
  s.add_dependency 'jquery-rails', '~> 3.0.4'
  s.add_dependency 'select2-rails', '~> 3.5.2'
  s.add_dependency 'highline', '= 1.6.20'
  s.add_dependency 'state_machine', '= 1.1.2'
  s.add_dependency 'ffaker', '~> 1.21.0'
  s.add_dependency 'paperclip', '~> 2.8'
  s.add_dependency 'aws-sdk', '~> 1.27.0'
  s.add_dependency 'ransack', '1.1.0'
  s.add_dependency 'activemerchant', '~> 1.42.2'
  s.add_dependency 'json', '>= 1.8.1'
  s.add_dependency 'rails', '~> 3.2.13'
  s.add_dependency 'kaminari', '0.13.0'
  s.add_dependency 'deface', '>= 0.9.0'
  s.add_dependency 'stringex', '~> 2.1.0'
  s.add_dependency 'cancan', '1.6.10'
  s.add_dependency 'money', '6.0.0'
  s.add_dependency 'rabl', '0.9.2'
  s.add_dependency 'truncate_html', '~> 0.5.5'
end
