defmodule FidoFinderWeb.PageController do
  use FidoFinderWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
