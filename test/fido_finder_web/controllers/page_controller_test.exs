defmodule FidoFinderWeb.PageControllerTest do
  use FidoFinderWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Adopt"
  end
end
