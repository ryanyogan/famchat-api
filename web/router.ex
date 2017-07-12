defmodule Famchat.Router do
  use Famchat.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Famchat do
    pipe_through :api
  end
end
