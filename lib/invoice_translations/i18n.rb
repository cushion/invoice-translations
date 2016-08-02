require 'r18n-core'

module InvoiceTranslations
  LOADER = R18n::Loader::YAML.new(File.expand_path('../../../i18n/', __FILE__))

  class I18n
    def initialize(locale)
      @i18n = R18n::I18n.new(locale, LOADER)
    end

    def [](name)
      @i18n[:invoice][name]
    end
    alias method_missing []
  end
end
