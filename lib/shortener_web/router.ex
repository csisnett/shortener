defmodule ShortenerWeb.Router do
  use ShortenerWeb, :router

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


  scope "/api/shorturl/new", ShortenerWeb do
    pipe_through :api

    get "/", UrlController, :index
    post "/", UrlController, :create
    get "/:id", UrlController, :show
  end

  scope "/", ShortenerWeb do
    pipe_through :browser

    get "/", PageController, :index

  end

  # Other scopes may use custom stacks.
  # scope "/api", ShortenerWeb do
  #   pipe_through :api
  # end
end
