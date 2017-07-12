defmodule Famchat.Router do
  use Famchat.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json-api"]
  end

  scope "/api", Famchat do
    pipe_through :api

    resources "session", SessionController, only: [:index]
  end
end
