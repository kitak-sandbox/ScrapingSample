require 'pp'

ActiveRecord::Base.transaction do
  1.upto(50) do |number|
    pokemon_params = PokemonFetcher.fetch(number)
    pokemon_params.merge!({number: number})
    Pokemon.create!(pokemon_params)
    pp pokemon_params
  end
end
