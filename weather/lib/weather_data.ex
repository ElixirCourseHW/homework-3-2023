defmodule Weather.Data do
  defmodule Location do
    defstruct [
      :city,
      :region,
      :country,
      :lat,
      :lon,
      :timezone
    ]
  end

  defmodule Weather do
    defstruct [
      :temp_c,
      :temp_f,
      :condition
    ]
  end

  defstruct [
    :location,
    :weather,
    :utc_time,
    :local_time,
    :last_updated_local,
    :last_updated_utc
  ]
end
