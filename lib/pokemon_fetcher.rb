require 'open-uri'
require 'nokogiri'

module PokemonFetcher
  def fetch(number)
    number = number.to_s.rjust(3, '0')
    html = open("http://www.pokemon.co.jp/zukan/pokemon/#{number}.html").read
    html_doc = Nokogiri::HTML(html)
    name = html_doc.at_css("h1").inner_text.strip
    height = html_doc.at_css('img[alt="高さ"]').parent.next.inner_text.strip
    specific = html_doc.at_css('img[alt="特性"]').parent.next.inner_text.strip

    {
      name: name,
      height: height,
      specific: specific
    }
  end
  module_function :fetch
end
