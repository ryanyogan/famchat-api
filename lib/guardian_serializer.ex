defmodule Famchat.GuardianSerializer do
  @behaviour Guardian.Serializer

  alias Famchat.{Repo, User}

  def for_token(user = %User{}), do: { :ok, "Users:#{user.id}" }
  def for_token(_), do: { :error, "Unknown resource type" }

  def from_token("Users:" <> id), do: { :ok, Repo.get(User, id) }
  def from_token(_), do: { :error, "Unknown resource type" }
end