defmodule Cheval.PageController do
  use Cheval.Web, :controller
  alias Cheval.Request

  def index(conn, _params) do
    changeset = Request.changeset
    render conn, "index.html", changeset: changeset
  end

  def pages(conn, %{"route" => route}) do
    changeset = Request.changeset
    render conn, route <> ".html", changeset: changeset
  end
end
