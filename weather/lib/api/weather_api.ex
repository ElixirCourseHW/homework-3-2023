defmodule Weather.API do
  @behaviour Weather.API.Behaviour

  @doc ~s"""
  Execute an API call to the OpenWeatherMap API and return the JSON body of the HTTP Response.
  See the example below to know which API endpoint to hit. You need to provide the `appid` and
  `city` (without the country!) to the API. See the example below.

  An example for `city=Sofia` and `appid=186ad7469ef56057ab9ef8522b8efda3` (the shared appid provided in
  the task definition):
  If you have installed `curl` and `jq`, you can run the following in your terminal.
  curl 'https://api.openweathermap.org/data/2.5/weather?q=Sofia&appid=186ad7469ef56057ab9ef8522b8efda3' | jq
  Executing this will return the following:
  {
    "coord": {
      "lon": 23.3242,
      "lat": 42.6975
    },
    "weather": [
      {
        "id": 803,
        "main": "Clouds",
        "description": "broken clouds",
        "icon": "04d"
      }
    ],
    "base": "stations",
    "main": {
      "temp": 285.73,
      "feels_like": 285,
      "temp_min": 285.52,
      "temp_max": 286.51,
      "pressure": 1012,
      "humidity": 75
    },
    "visibility": 10000,
    "wind": {
      "speed": 4.63,
      "deg": 130
    },
    "clouds": {
      "all": 75
    },
    "dt": 1681726140,
    "sys": {
      "type": 2,
      "id": 2033225,
      "country": "BG",
      "sunrise": 1681702962,
      "sunset": 1681751377
    },
    "timezone": 10800,
    "id": 727011,
    "name": "Sofia",
    "cod": 200
  }
  """
  @impl Weather.API.Behaviour
  def get_city_weather(city) do
  end
end
