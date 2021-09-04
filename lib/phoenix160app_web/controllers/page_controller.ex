defmodule Phoenix160appWeb.PageController do
  use Phoenix160appWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
