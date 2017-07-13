defmodule Famchat.RegistrationControllerTest do
  use Famchat.ConnCase

  alias Famchat.User

  @valid_attrs %{
    email: "ryanyogan@example.com",
    password: "foobar",
    password_confirmation: "foobar"
  }

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "creates and renders resources when data is valid", %{conn: conn} do
    conn = post conn, registration_path(conn, :create), %{data: %{type: "user",
      attributes: @valid_attrs
    }}

    assert json_response(conn, 201)["data"]["id"]
    assert Repo.get_by(User, %{email: @valid_attrs[:email]})
  end
end