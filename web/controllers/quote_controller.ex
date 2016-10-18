defmodule Cheval.QuoteController do
  use Cheval.Web, :controller
  alias Cheval.{Request, Repo, PageView}

  def request(conn, %{"request" => request}) do
    send_request(request)
    |> case do
         %Request{} -> redirect conn, to: "/"
         changeset -> render conn, PageView, "index.html", changeset: changeset
       end
  end

  defp send_request(request_params) do
    changeset = Request.changeset(%Request{}, request_params)
    case Repo.insert(changeset) do
      {:ok, request} -> request
      {:error, changeset} -> changeset
    end
  end
end
