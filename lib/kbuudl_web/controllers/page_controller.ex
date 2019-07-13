defmodule KbuudlWeb.PageController do
  use KbuudlWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
