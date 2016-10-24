defmodule Cheval.Router do
  use Cheval.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Cheval do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/:route", PageController, :pages

    post "/quote", QuoteController, :request
  end

  scope "/admin", Cheval do
    pipe_through :browser

    get "/messages", QuoteController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Cheval do
  #   pipe_through :api
  # end
end
