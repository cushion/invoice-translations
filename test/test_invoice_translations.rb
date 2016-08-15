require 'minitest/autorun'
require 'invoice_translations'

class TestInvoiceTranslations < Minitest::Test
  def test_available_locales
    assert InvoiceTranslations.available_locales.include?('en')
  end
end
