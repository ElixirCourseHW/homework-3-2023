defmodule Weather do
  @typedoc """
  City identifier.
  The city identifier includes the country, too. "Sofia/Bulgaria" identifies
  the city Sofia, located in Bulgaria.
  """
  @type city :: String.t()

  @typedoc """
  Time-to-live in milliseconds. It controls how long the weather data is
  valid if it has not been refreshed. It must be bigger than the refresh_interval.
  """
  @type ttl :: non_neg_integer()

  @typedoc """
  An interval in milliseconds. It controls how often the data will be synced
  with the weather API. It must be smaller than the ttl.
  """
  @refresh_interval :: non_neg_integer()

  # Instead of using the `Weather.API` directly, use `@weather_api.get_city_weather(city)`
  # This way in the tests the module making real HTTP requests can be swapped
  # with a one that returns predefined results. This is how the solution
  # is going to be tested.
  @weather_api Application.compile_env(:weather_module, Weather.API)

  @doc ~s"""

  """
  @spec start_link(Keyword.t()) :: {:ok, pid()} | {:error, any()}
  def start_link(opts) do
  end

  def child_spec(opts) do
    %{
      id: Keyword.get(opts, :id, __MODULE__),
      start: {__MODULE__, :start_link, opts}
    }
  end

  @doc ~s"""
  Gets the weather for a registered city.
  Timeout after 5 seconds if the data is not fetched.
  """
  @spec get_weather(city) ::
          {:ok, Weather.Data.t()} | {:error, :ttl_expired} | {:error, :timeout} | {:error, any()}
  def get_weather(city) do
  end

  @doc ~s"""
  Subscribes a new city. Once the city is subscribed, the program
  starts to fetch new weather data every `refresh_interval` milliseconds.
  If no new data has been fetched for `ttl` milliseconds, the available data
  is cleared from the memory and subsequent calls to get_weather will result in
  {:error, :ttl_expired}
  """
  @spec subscribe_city(city, ttl, refresh_interval) :: :ok
  def subscribe_city(city, ttl, refresh_interval) do
  end

  @doc ~s"""
  Stops following a city.
  """
  @spec unsubscribe_city(city) :: :ok
  def unsubscribe_city(city) do
  end
end
