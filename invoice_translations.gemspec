require File.expand_path('../lib/invoice_translations/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'invoice_translations'
  gem.version     = InvoiceTranslations::VERSION
  gem.summary     = 'Invoice translations for Cushion'
  gem.description = 'Invoice template translations for Cushion'
  gem.authors     = ['Larry Fox']
  gem.email       = 'larry@cushionapp.com'
  gem.homepage    = 'https://github.com/cushion/invoice-translations'
  gem.license     = 'MIT'

  gem.required_ruby_version = '>= 2.0'

  gem.files         += Dir.glob('lib/**/*.rb')
  gem.test_files    = Dir.glob('test/**/*')
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rake', '~> 11.2'
  gem.add_development_dependency 'minitest', '~> 5.9'
end
