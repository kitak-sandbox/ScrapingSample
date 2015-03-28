require 'open-uri'
require 'nokogiri'

module PokemonFetcher
  def fetch(number)
    number = number.to_s.rjust(3, '0')
    html = open("http://www.pokemon.co.jp/zukan/pokemon/#{number}.html").read
    html_doc = Nokogiri::HTML(html)
    name = html_doc.at_css("h1").inner_text
    puts name
  end
  module_function :fetch
end
PokemonFetcher.fetch(1)