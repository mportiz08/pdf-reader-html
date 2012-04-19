$:.unshift File.expand_path("../lib", __FILE__)
require 'pdf/reader/html'

Gem::Specification.new do |s|
  s.name        = 'pdf-reader-html'
  s.version     = PDF::Reader::Html::VERSION
  s.summary     = 'convert .pdf files into html'
  s.description = s.summary
  s.author      = 'Marcus Ortiz'
  s.email       = 'mportiz08@gmail.com'
  s.homepage    = 'https://github.com/mportiz08/pdf-reader-html'
  s.files       = Dir["README.md", "LICENSE.md", "lib/**/*.rb"]
  
  s.add_dependency 'pdf-reader',  '~> 1.1.0'
  s.add_dependency 'html_writer', '~> 0.2.0'
end
