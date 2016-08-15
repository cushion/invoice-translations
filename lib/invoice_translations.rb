require 'r18n-core'

module InvoiceTranslations
  LOADER = R18n::Loader::YAML.new(File.expand_path('../../i18n/', __FILE__))

  module_function

  def available_locales
    LOADER.available.map(&:code)
  end
end

require 'invoice_translations/i18n'
require 'invoice_translations/version'
