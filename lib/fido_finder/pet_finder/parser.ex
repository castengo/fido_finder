defmodule PetFinder.Parser do
  @moduledoc """
  Parses data from petfinder API.
  """
  alias PetFinder.Pet

  @photo_not_available "https://static1.squarespace.com/static/5a31780cace8643074b025ae/t/5a957a1a0d9297d5c09756b4/1519745972162/image-not-available.jpg"

  @doc """
  Parses a list of pet data.
  """
  def parse_pets(%{ "petfinder" => %{ "pets" => %{ "pet" => pets}}}) do
    Enum.map(pets, &parse_pet/1)
  end
  def parse_pets(_), do: []

  @doc """
  Parses data for a single pet.
  """
  def parse_pet(
    %{
      "age" => %{"$t" => age},
      "contact" => %{
        "email" => %{"$t" => email}
      },
      "media" => media,
      "name" => %{"$t" => name},
      "sex" => %{"$t" => sex}
    }
  ) do
    %Pet{
      age: age,
      contact_email: email,
      name: name,
      photo_url: get_photo(media),
      sex: get_sex(sex)
    }
  end

  defp get_photo(media) when map_size(media) == 0, do: @photo_not_available
  defp get_photo(%{ "photos" => %{ "photo" => photo_list }}) do
    photo_list
    |> Enum.find(&(&1["@size"] == "x"))
    |> do_get_photo
  end

  defp do_get_photo(%{"$t" => url}), do: url
  defp do_get_photo(_), do: @photo_not_available

  defp get_sex("F"), do: "female"
  defp get_sex("M"), do: "male"

end
