defmodule Weather.API.Stub do
  @behaviour Weather.API.Behaviour

  # Modify this as you see fit. You can use current datetime instead
  # of hardcoded localtime/last_updated/etc.
  # You can also modify the temperatures so they have some random
  # variation around some average value, etc.
  def get_city_weather("Sofia") do
    json = """
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
        "temp": 286.98,
        "feels_like": 286.04,
        "temp_min": 286.98,
        "temp_max": 290.95,
        "pressure": 1015,
        "humidity": 62
      },
      "visibility": 10000,
      "wind": {
        "speed": 2.57,
        "deg": 270
      },
      "clouds": {
        "all": 75
      },
      "dt": 1682845659,
      "sys": {
        "type": 1,
        "id": 6366,
        "country": "BG",
        "sunrise": 1682824991,
        "sunset": 1682875474
      },
      "timezone": 10800,
      "id": 727011,
      "name": "Sofia",
      "cod": 200
    }
    """

    {:ok, json}
  end

  def get_city_weather("Berlin") do
    json = """
    {
      "coord": {
        "lon": 13.4105,
        "lat": 52.5244
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "base": "stations",
      "main": {
        "temp": 283.34,
        "feels_like": 281.8,
        "temp_min": 281.68,
        "temp_max": 285.27,
        "pressure": 1022,
        "humidity": 53
      },
      "visibility": 10000,
      "wind": {
        "speed": 4.63,
        "deg": 290
      },
      "clouds": {
        "all": 0
      },
      "dt": 1682845831,
      "sys": {
        "type": 2,
        "id": 2011538,
        "country": "DE",
        "sunrise": 1682825858,
        "sunset": 1682879364
      },
      "timezone": 7200,
      "id": 2950159,
      "name": "Berlin",
      "cod": 200
    }
    """

    {:ok, json}
  end

  def get_city_weather("London") do
    json = """
    {
      "coord": {
        "lon": -0.1257,
        "lat": 51.5085
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "base": "stations",
      "main": {
        "temp": 287.85,
        "feels_like": 287.2,
        "temp_min": 286.14,
        "temp_max": 288.86,
        "pressure": 1022,
        "humidity": 70
      },
      "visibility": 10000,
      "wind": {
        "speed": 3.6,
        "deg": 140
      },
      "clouds": {
        "all": 100
      },
      "dt": 1682845846,
      "sys": {
        "type": 2,
        "id": 2019646,
        "country": "GB",
        "sunrise": 1682829292,
        "sunset": 1682882428
      },
      "timezone": 3600,
      "id": 2643743,
      "name": "London",
      "cod": 200
    }
    """

    {:ok, json}
  end

  def get_city_weather("Osaka") do
    json = """
    {
      "coord": {
        "lon": 135.5022,
        "lat": 34.6937
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "base": "stations",
      "main": {
        "temp": 291.55,
        "feels_like": 291.14,
        "temp_min": 290.11,
        "temp_max": 292.33,
        "pressure": 1011,
        "humidity": 65,
        "sea_level": 1011,
        "grnd_level": 1009
      },
      "visibility": 10000,
      "wind": {
        "speed": 2.69,
        "deg": 39,
        "gust": 6.06
      },
      "clouds": {
        "all": 100
      },
      "dt": 1682845992,
      "sys": {
        "type": 2,
        "id": 2034450,
        "country": "JP",
        "sunrise": 1682798970,
        "sunset": 1682847653
      },
      "timezone": 32400,
      "id": 1853909,
      "name": "Osaka",
      "cod": 200
    }
    """

    {:ok, json}
  end
end
