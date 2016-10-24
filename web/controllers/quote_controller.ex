defmodule Cheval.QuoteController do
  use Cheval.Web, :controller
  alias Cheval.{Request, Repo, PageView, AdminView}

  def request(conn, %{"request" => request}) do
    send_request(request)
    |> case do
         %Request{} -> redirect conn, to: "/"
         changeset -> render conn, PageView, "index.html", changeset: changeset
       end
  end

  def index(conn, _) do
    changeset = Request.changeset
    requests = Repo.all(Request)
    render conn, AdminView, "index.html", requests: requests, changeset: changeset
  end

  defp send_request(request_params) do
    request_params = Map.put(request_params, "deadline", date_to_string(request_params["deadline"]))
    changeset = Request.changeset(%Request{}, request_params)
    case Repo.insert(changeset) do
      {:ok, request} -> request
      {:error, changeset} -> changeset
    end
  end

  defp date_to_string(%{"year" => year, "month" => month, "day" => day}),
    do: "#{year}-#{month}-#{day}"
end
