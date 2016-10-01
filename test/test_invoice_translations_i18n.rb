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

  def test_to_h
    assert_equal Hash, @i18n.to_h.class
    assert_equal 'English', @i18n.to_h['description']
    assert_nil @i18n.to_h['ok']
  end
end
