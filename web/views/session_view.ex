# web/views/session_view.ex
defmodule AuthApi.SessionView do
  use AuthApi.Web, :view

  def render("show.json", %{session: session}) do
    render_one(session, AuthApi.SessionView, "session.json")
  end

  def render("session.json", %{session: session}) do
    %{token: session.token}
  end

  def render("error.json", _anything) do
    %{errors: "failed to authenticate"}
  end
end