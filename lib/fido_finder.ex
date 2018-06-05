defmodule FidoFinder do
  @moduledoc """
  FidoFinder keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  alias PetFinder.{
    Fetcher,
    Parser
  }

  def find(zipcode) do
    Fetcher.find(zipcode)
    |> Parser.parse_pets()
  end

end
