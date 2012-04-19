# pdf-reader-html

an extension to the `pdf-reader` gem that provides a `to_html` method for the `PDF::Reader` object

## install

    gem install pdf-reader-html

## usage

``` ruby
require 'pdf/reader/html'

pdf = PDF::Reader.new('test.pdf')
pdf.to_html
```
