defmodule Cheval.PageController do
  use Cheval.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
