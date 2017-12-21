defmodule HelloPhoenix.UserView do
  use HelloPhoenix.Web, :view
  alias HelloPhoenix.User
  def render("show.json", %{user: user}) do
    %{id: user.id, username: user.username}
  end
end