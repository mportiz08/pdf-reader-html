require 'pdf/reader/html'
require 'test/unit'

class TestHtml < Test::Unit::TestCase
  def test_basic_conversion
    expected =
      '<!DOCTYPE html>'\
      '<html>'\
      '<head>'\
        '<title>basic</title>'\
      '</head>'\
      '<body>'\
        '<p>hello</p>'\
        '<p>world</p>'\
      '</body>'\
      '</html>'
    actual = PDF::Reader.new('test/fixtures/basic.pdf').to_html(title: 'basic')
    assert_equal expected, actual
  end
end
