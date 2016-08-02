defmodule Proker.PageController do
  use Proker.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
