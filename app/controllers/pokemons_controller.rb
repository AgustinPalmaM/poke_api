
class PokemonsController < ApplicationController

  def index
    pokemon = params[:pokemon]
    conn = Faraday.new("https://pokeapi.co/api/v2")
    response = conn.get("pokemon/#{pokemon.downcase}")
    @pokemon = JSON.parse(response.body)
  end

end
