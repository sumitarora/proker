defmodule Proker.Router do
  use Proker.Web, :router

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

  scope "/", Proker do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    
    resources "/projects", ProjectController

    get "/tasks", TaskController, :index
    post "/tasks", TaskController, :create
    get "/tasks/new", TaskController, :new
    get "/tasks/:id", TaskController, :show
    delete "/tasks/:id", TaskController, :delete
    
  end

  # Other scopes may use custom stacks.
  # scope "/api", Proker do
  #   pipe_through :api
  # end
end
