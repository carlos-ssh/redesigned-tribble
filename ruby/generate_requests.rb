require 'json'
require 'rest-client'

url = 'https://api.currencyapi.com/v3/latest?apikey=4ijRkSxGPdVuYxlIsQ3zwDnIUojKUAazysyJkeEI&currencies='

response = RestClient.get url
result = JSON.parse response.to_str

puts result
