module InvoiceTranslations
  I18N_DIR = File.expand_path('../../i18n/', __FILE__).freeze
  I18N_FILES = Dir.glob(File.join(I18N_DIR, '*.yml')).freeze

  module_function

  def available_locales
    I18N_FILES.map { |fn| File.basename(fn, '.yml') }
  end

  def to_h
    available_locales
      .map { |locale| [locale, InvoiceTranslations::I18n.new(locale).to_h] }
      .to_h
  end
end

require 'invoice_translations/i18n'
require 'invoice_translations/version'
