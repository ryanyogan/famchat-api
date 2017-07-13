defmodule Famchat.ChangesetView do
  use Famchat.Web, :view

  @doc """
  Enums and translates changeset errors.
  
  See `Ecto.Changeset.traverse_errors/2` and
  `Famchat.ErrorHelpers.translate_error/1` for more deets...
  """
  def translate_errors(changeset) do
    Ecto.Changeset.traverse_errors(changeset, &translate_error/1)
  end

  def render("error.json", %{changeset: changeset}) do
    # When encoded, the changeset returns its error
    # as a JSON object.  Pass it on through dat serializer :)
    JaSerializer.EctoErrorSerializer.format(changeset)
  end
end