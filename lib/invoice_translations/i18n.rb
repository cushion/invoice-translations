require 'yaml'

module InvoiceTranslations
  class I18n
    def initialize(locale)
      @i18n = ::YAML.load_file(File.join(I18N_DIR, "#{locale}.yml"))
    end

    def to_h
      @i18n
    end

    def [](name)
      @i18n['invoice'.freeze][name.to_s]
    end
    alias method_missing []
  end
end
