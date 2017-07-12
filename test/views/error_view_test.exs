defmodule Famchat.ErrorViewTest do
  use Famchat.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders 404.json" do
    assert render(Famchat.ErrorView, "404.json", []) ==
           %{errors: %{detail: "Page not found"}}
  end

  test "render 500.json" do
    assert render(Famchat.ErrorView, "500.json", []) ==
           %{errors: %{detail: "Internal server error"}}
  end

  test "render any other" do
    assert render(Famchat.ErrorView, "505.json", []) ==
           %{errors: %{detail: "Internal server error"}}
  end
end
