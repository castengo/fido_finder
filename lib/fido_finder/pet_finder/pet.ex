defmodule PetFinder.Pet do
  @moduledoc """
  Stores pet data.
  """
  defstruct [
    :age,
    :contact_email,
    :name,
    :photo_url,
    :sex
  ]
end
