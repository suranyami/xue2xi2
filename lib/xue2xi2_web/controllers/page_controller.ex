defmodule Xue2xi2Web.PageController do
  use Xue2xi2Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
