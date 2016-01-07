module Docs
  class Jasmine < UrlScraper
    self.name = 'Jasmine'
    self.type = 'jasmine'
    self.version = '1.6.5'
    self.base_url = 'http://jasmine.github.io/'
    self.root_path = '2.0/introduction.html'
    self.links = {
      home: 'http://bower.io/',
      code: 'https://github.com/bower/bower'
    }

    html_filters.push 'bower/clean_html', 'bower/entries'

    options[:trailing_slash] = false
    options[:skip] = %w(tools about)

    options[:attribution] = <<-HTML
      &copy; 2015 Bower contributors<br>
      Licensed under the Creative Commons Attribution License.
    HTML
  end
end
