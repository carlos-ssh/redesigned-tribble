# ResponseApisController - API for getting response data

class ResponseApisController < ApplicationController

  def index
    require 'net/http'
    require 'json'
    require 'uri'

    @url = "https://api.currencyapi.com/v3/latest?apikey=4ijRkSxGPdVuYxlIsQ3zwDnIUojKUAazysyJkeEI"
    @uri = URI(@url)
    @response = Net::HTTP.get_response(@uri)
    @output = JSON.parse(@response.body).to_a
    render json: @output
  end

  def save_data_from_api
    @output = JSON.parse(@response.body.data)

  end

  private

  def response_api_params
    params.require(:response_api).permit(:execution_time, :start_time, :end_time)
  end
end
