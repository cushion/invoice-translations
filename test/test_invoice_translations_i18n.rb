require 'minitest/autorun'
require 'invoice_translations'

class TestInvoiceTranslationsI18n < Minitest::Test
  def setup
    @i18n = InvoiceTranslations::I18n.new('en')
  end

  def test_getter
    assert_equal 'Invoice', @i18n[:invoice]
    assert_equal 'Invoice', @i18n.invoice
  end
end
