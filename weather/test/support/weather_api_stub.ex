defmodule Weather.API.StubTest do
  @behaviour Weather.API.Behaviour

  # The first two times the call succeeds, after that it only returns error
  def get_city_weather("Sofia") do
    times_called_so_far = Agent.get_and_update(TimesCalledAPI, fn x -> {x, x + 1} end)

    get_json(times_called_so_far)
  end

  defp get_json(times_called_so_far) when times_called_so_far in [0, 1] do
    now = DateTime.utc_now()
    minutes_ago = DateTime.add(now, -180, :second)

    now_str = Calendar.strftime(now, "%Y-%m-%d %H:%M")
    minutes_ago_str = Calendar.strftime(minutes_ago, "%Y-%m-%d %H:%M")

    json = """
    {
      "location": {
        "name": "Sofia",
        "region": "Grad Sofiya",
        "country": "Bulgaria",
        "lat": 42.68,
        "lon": 23.32,
        "tz_id": "Europe/Sofia",
        "localtime_epoch": #{DateTime.to_unix(now)},
        "localtime": "#{now_str}"
      },
      "current": {
        "last_updated_epoch": #{DateTime.to_unix(minutes_ago)},
        "last_updated": "#{minutes_ago_str}",
        "temp_c": #{35 + times_called_so_far},
        "temp_f": 95,
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
        "feelslike_c": #{35 + times_called_so_far},
        "feelslike_f": 95,
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

  defp get_json(_) do
    {:error, "Something went wrong"}
  end
end
