defmodule Famchat.UserTest do
  use Famchat.ModelCase

  alias Famchat.User

  @valid_attrs %{email: "ryan@example.com",
    password: "foobar",
    password_confirmation: "foobar"}

  @invalid_attrs %{}

  @mis_match_attrs %{email: "ryan@example.com",
    password: "foobar",
    password_confirmation: "barfoo"}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end

  test "mis-matched password_confirmation doesn't work" do
    changeset = User.changeset(%User{}, @mis_match_attrs)
    refute changeset.valid?
  end
end
