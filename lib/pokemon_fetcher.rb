require 'open-uri'

module PokemonFetcher
  def fetch(number)
    number = number.to_s.rjust(3, '0')
    html = open("http://www.pokemon.co.jp/zukan/pokemon/#{number}.html").read
    puts html
  end
  module_function :fetch
end
