class PokemonsController < ApplicationController

  def index
    # function loads all pokemons of national region because the
    # pokedex national ID is 1
    begin
      url = Rails.configuration.api_url+'pokedex/1'
      p url
      response = RestClient.get url
      if response.code == 200
        # if response was successfully parse JSON
        response = JSON.parse(response)
        # get the values of all pokemons in the national region and paginate
        @pokemons = response["pokemon_entries"].paginate(:page => params[:page], :per_page => 12)
      else
        # if response code isn't succed, set a message to the user and show the view
        flash[:error] = 'Ocurrió un error en la consulta hacia pokeapi. Por favor, inténtalo nuevamente'
      end
    rescue
      #if an exception appears, set a message to the user and show the view
      flash[:error] = 'Ocurrió un error en la consulta hacia pokeapi. Por favor, inténtalo nuevamente'
    end
  end

  def show
    begin
      url = Rails.configuration.api_url+'pokemon/'+params['id']
      response = RestClient.get url, :accept => JSON
      if response.code == 200
        response = JSON.parse(response)
        pokemon_abilities = []
        response['abilities'].map do |ability|
          pokemon_abilities << ability['ability']['name']
        end
        pokemon_moves = []
        response['moves'].map do |move|
          pokemon_moves << move['move']['name']
        end
        @pokemon_detail = {
          name: response['name'],
          id: params['id'],
          weight: response['weight'],
          height: response['height'],
          abilities: pokemon_abilities,
          moves: pokemon_moves,
          species: response['species']['name'],
        }
        p @pokemon_detail
      end
      # You need complete the code here!
      # function load the details of the pokemon with its
      # entry number, show the image, name, weight, height,
      # moves, abilities and species
    end
  end

end
