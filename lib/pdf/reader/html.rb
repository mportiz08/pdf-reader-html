require 'pdf/reader'
require 'html_writer'

require 'pdf/reader/html/version'

module PDF
  class Reader
    class Page
      def to_html
        self.text.split("\n").map do |paragraph|
          HtmlWriter.new.write_inline { |html| html.p paragraph }
        end
      end
    end
    
    def to_html(options={})
      HtmlWriter.new.write do |html|
        html.doctype options[:doctype] || 5
        html.head do |head|
          head.title options[:title] || ''
        end
        html.body self.pages.map(&:to_html).join('')
      end
    end
  end
end
