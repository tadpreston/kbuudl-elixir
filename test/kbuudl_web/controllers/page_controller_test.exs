defmodule KbuudlWeb.PageControllerTest do
  use KbuudlWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Kbuudl!"
  end
end
