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

  @type t :: %__MODULE__{
    age:           String.t,
    contact_email: String.t,
    name:          String.t,
    photo_url:     String.t,
    sex:           String.t
  }
end
