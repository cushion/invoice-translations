require 'r18n-core'

module InvoiceTranslations
  LOADER = R18n::Loader::YAML.new(File.expand_path('../../i18n/', __FILE__))

  module_function

  def available_locales
    LOADER.available.map(&:code)
  end

  def to_h
    available_locales
      .map { |locale| [locale, InvoiceTranslations::I18n.new(locale).to_h] }.to_h
  end
end

require 'invoice_translations/i18n'
require 'invoice_translations/version'
