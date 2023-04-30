defmodule Weather.Data do
  defmodule Location do
    defstruct [
      :city,
      :country,
      :lat,
      :lon
    ]
  end

  defmodule Weather do
    defstruct [
      :temp_c,
      :temp_f
    ]
  end

  defstruct [
    :location,
    :weather
  ]
end
