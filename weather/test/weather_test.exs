defmodule WeatherTest do
  use ExUnit.Case
  doctest Weather

  test "Gets the weather" do
    # The first 2 times the Weather.API.TestStub is called it will return
    # data. All the next calls will return error.
    _ = Agent.start_link(fn -> 0 end, name: TimesCalledAPI)

    {:ok, _} = Weather.start_link(name: Weather, api_module: Weather.API.TestStub)

    :ok = Weather.subscribe_city("Sofia/Bulgaria", 1000, 500)

    Process.sleep(100)

    # 500ms have not passed yet. Only one API call has been made to the API,
    # which has succeeded.
    {:ok, %Weather.Data{} = data} = Weather.get_weather("Sofia/Bulgaria")

    assert data.location.city == "Sofia"
    assert data.location.country == "Bulgaria"
    assert data.weather.temp_c == 35

    Process.sleep(500)

    # 600ms have passed since the subscription. The second API call to
    # refresh the data has been made and it was successful. Get the updated
    # data
    {:ok, %Weather.Data{} = data} = Weather.get_weather("Sofia/Bulgaria")

    assert data.location.city == "Sofia"
    assert data.location.country == "Bulgaria"
    assert data.weather.temp_c == 36

    Process.sleep(3000)
    # 3600ms have passed since the subscription. Since the third call
    # to refresh the data all calls have failed. The TTL has expired and
    # get_weather starts returning {:error, :ttl_expired}
    {:error, :ttl_expired} = Weather.get_weather("Sofia/Bulgaria")
  end
end
