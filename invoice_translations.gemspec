lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'invoice_translations'

Gem::Specification.new do |gem|
  gem.name        = 'invoice_translations'
  gem.version     = InvoiceTranslations::VERSION
  gem.summary     = 'Invoice translations for Cushion'
  gem.description = 'Invoice translations for Cushion'
  gem.authors     = ['Larry Fox']
  gem.email       = 'larry@cushionapp.com'
  gem.homepage    = 'http://cushionapp.com/'
  gem.license     = 'MIT'

  gem.required_ruby_version = '>= 2.0'

  gem.files         += Dir.glob('lib/**/*.rb')
  gem.test_files    = Dir.glob('test/**/*')
  gem.require_paths = ['lib']

  gem.add_dependency 'r18n-core'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'minitest'
end
