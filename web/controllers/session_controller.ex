defmodule Famchat.SessionController do
  use Famchat.Web, :controller 

  def index(conn, _params) do
    conn
    |> json(%{status: "OK"})
  end
end