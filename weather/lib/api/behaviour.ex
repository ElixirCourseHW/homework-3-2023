defmodule Weather.API.Behaviour do
  @typedoc ~s"""
  The OpenWeatherMap city, without the country. Example: Sofia, Berlin, London.
  """
  @type city :: String.t()
  @typedoc ~s"""
  A String that holds stringified JSON. For examples see the `Weather.API` documentation
  """
  @type json_str :: String.t()

  @callback get_city_weather(city) :: {:ok, json_str} | {:error, any()}
end
