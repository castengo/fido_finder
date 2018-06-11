defmodule PetFinder.Fetcher do
  @moduledoc """
  Pet finder fetcher.
  """
  # TODO put values here
  defp api_url, do: Application.get_env :fido_finder, :api_url
  defp api_key, do: Application.get_env :fido_finder, :api_key
  # defp api_secret, do: Application.get_env :fido_finder, :api_secret

  @doc """
  Finds adoptable pets by zipcode using the pet.find endpoint.
  """
  def find(zipcode) do
    HTTPoison.get(api_url() <> "/pet.find", [], params: find_query(zipcode))
    |> handle_response()
  end

  defp handle_response({:error, _}=error), do: error
  defp handle_response({:ok, %{body: body, status_code: 200}}), do: Poison.decode!(body)

  defp find_query(location) do
    %{
      key: api_key(),
      location: location,
      output: "basic",
      format: "json"
    }
  end
end
