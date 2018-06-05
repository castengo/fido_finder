defmodule FidoFinderWeb.PageController do
  use FidoFinderWeb, :controller

  def index(conn, %{"search" => zipcode}) do
    render conn, "index.html", pets: FidoFinder.find(zipcode)
  end
  def index(conn, _params) do
    render conn, "index.html", pets: []
  end
end
