defmodule Weather.API.Stub do
  @behaviour Weather.API.Behaviour

  # Modify this as you see fit. You can use current datetime instead
  # of hardcoded localtime/last_updated/etc.
  # You can also modify the temperatures so they have some random
  # variation around some average value, etc.
  def get_city_weather("Sofia") do
    json = """
    {
      "location": {
        "name": "Sofia",
        "region": "Grad Sofiya",
        "country": "Bulgaria",
        "lat": 42.68,
        "lon": 23.32,
        "tz_id": "Europe/Sofia",
        "localtime_epoch": 1679673805,
        "localtime": "2023-03-24 18:03"
      },
      "current": {
        "last_updated_epoch": 1679673600,
        "last_updated": "2023-03-24 18:00",
        "temp_c": 18,
        "temp_f": 64.4,
        "is_day": 1,
        "condition": {
          "text": "Sunny",
          "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png",
          "code": 1000
        },
        "wind_mph": 6.9,
        "wind_kph": 11.2,
        "wind_degree": 90,
        "wind_dir": "E",
        "pressure_mb": 1013,
        "pressure_in": 29.91,
        "precip_mm": 0,
        "precip_in": 0,
        "humidity": 39,
        "cloud": 0,
        "feelslike_c": 18,
        "feelslike_f": 64.4,
        "vis_km": 10,
        "vis_miles": 6,
        "uv": 5,
        "gust_mph": 1.1,
        "gust_kph": 1.8
      }
    }
    """

    {:ok, json}
  end

  def get_city_weather("Berlin") do
    json = """
    {
      "location": {
        "name": "Berlin",
        "region": "Berlin",
        "country": "Germany",
        "lat": 52.52,
        "lon": 13.4,
        "tz_id": "Europe/Berlin",
        "localtime_epoch": 1679674007,
        "localtime": "2023-03-24 17:06"
      },
      "current": {
        "last_updated_epoch": 1679673600,
        "last_updated": "2023-03-24 17:00",
        "temp_c": 14,
        "temp_f": 57.2,
        "is_day": 1,
        "condition": {
          "text": "Partly cloudy",
          "icon": "//cdn.weatherapi.com/weather/64x64/day/116.png",
          "code": 1003
        },
        "wind_mph": 15,
        "wind_kph": 24.1,
        "wind_degree": 270,
        "wind_dir": "W",
        "pressure_mb": 1001,
        "pressure_in": 29.56,
        "precip_mm": 0,
        "precip_in": 0,
        "humidity": 51,
        "cloud": 25,
        "feelslike_c": 12.5,
        "feelslike_f": 54.4,
        "vis_km": 10,
        "vis_miles": 6,
        "uv": 4,
        "gust_mph": 15,
        "gust_kph": 24.1
      }
    }
    """

    {:ok, json}
  end

  def get_city_weather("London") do
    json = """
    {
      "location": {
        "name": "London",
        "region": "City of London, Greater London",
        "country": "United Kingdom",
        "lat": 51.52,
        "lon": -0.11,
        "tz_id": "Europe/London",
        "localtime_epoch": 1679674044,
        "localtime": "2023-03-24 16:07"
      },
      "current": {
        "last_updated_epoch": 1679673600,
        "last_updated": "2023-03-24 16:00",
        "temp_c": 9,
        "temp_f": 48.2,
        "is_day": 1,
        "condition": {
          "text": "Light rain",
          "icon": "//cdn.weatherapi.com/weather/64x64/day/296.png",
          "code": 1183
        },
        "wind_mph": 19.2,
        "wind_kph": 31,
        "wind_degree": 260,
        "wind_dir": "W",
        "pressure_mb": 998,
        "pressure_in": 29.47,
        "precip_mm": 0.3,
        "precip_in": 0.01,
        "humidity": 81,
        "cloud": 75,
        "feelslike_c": 5.3,
        "feelslike_f": 41.5,
        "vis_km": 10,
        "vis_miles": 6,
        "uv": 3,
        "gust_mph": 24.8,
        "gust_kph": 40
      }
    }
    """

    {:ok, json}
  end

  def get_city_weather("Osaka") do
    json = """
    {
      "location": {
        "name": "Osaka-Shi",
        "region": "Osaka",
        "country": "Japan",
        "lat": 34.69,
        "lon": 135.5,
        "tz_id": "Asia/Tokyo",
        "localtime_epoch": 1679674072,
        "localtime": "2023-03-25 1:07"
      },
      "current": {
        "last_updated_epoch": 1679673600,
        "last_updated": "2023-03-25 01:00",
        "temp_c": 13,
        "temp_f": 55.4,
        "is_day": 0,
        "condition": {
          "text": "Clear",
          "icon": "//cdn.weatherapi.com/weather/64x64/night/113.png",
          "code": 1000
        },
        "wind_mph": 11.9,
        "wind_kph": 19.1,
        "wind_degree": 340,
        "wind_dir": "NNW",
        "pressure_mb": 1014,
        "pressure_in": 29.94,
        "precip_mm": 0,
        "precip_in": 0,
        "humidity": 77,
        "cloud": 0,
        "feelslike_c": 12,
        "feelslike_f": 53.6,
        "vis_km": 10,
        "vis_miles": 6,
        "uv": 1,
        "gust_mph": 9.2,
        "gust_kph": 14.8
      }
    }
    """

    {:ok, json}
  end
end
