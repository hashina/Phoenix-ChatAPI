defmodule HelloPhoenix.Router do
  use HelloPhoenix.Web, :router

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

#  scope "/", HelloPhoenix do
#    pipe_through :browser # Use the default browser stack
#
#    get "/", PageController, :index
#    resources "/users", UserController, only: [:index, :show, :new, :create]
#    #get "/users", UserController, :index
#    #get "/user/:id", UserController, :show
#  end

  # Other scopes may use custom stacks.
  scope "/api/v1", HelloPhoenix do
     pipe_through :api

      get "/user", UserController, :show
      get "/rooms", RoomController, :show
      post "/sessions", SessionController, :create
      get "/message", MessageController, :show
  end
end
