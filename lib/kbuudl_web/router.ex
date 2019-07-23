defmodule KbuudlWeb.Router do
  use KbuudlWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Kbuudl.Auth
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", KbuudlWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources "/users", UserController, only: [:new, :create, :show]
  end

  # Other scopes may use custom stacks.
  # scope "/api", KbuudlWeb do
  #   pipe_through :api
  # end
end
