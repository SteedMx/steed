defmodule Cheval.PageController do
  use Cheval.Web, :controller

  def index(conn, _params), do: render conn, "index.html"
  def pages(conn, %{"route" => route}), do: render conn, route <> ".html"
end
