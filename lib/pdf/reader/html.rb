require 'pdf/reader'
require 'html_writer'

require 'pdf/reader/html/version'

module PDF
  class Reader
    class Page
      def to_html
        self.text
      end
    end
    
    def to_html(options={})
      HtmlWriter.new.write do |html|
        html.doctype options[:doctype] || 5
        html.head do |head|
          head.title options[:title] || ''
        end
        html.body self.pages.map(&:to_html)
      end
    end
  end
end
