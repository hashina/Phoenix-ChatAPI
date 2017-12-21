defmodule HelloPhoenix.UserController do
  require Logger
  use HelloPhoenix.Web, :controller
  alias HelloPhoenix.User
  def index(conn, _params) do
    users = Repo.all(HelloPhoenix.User)
    render conn, users: users
  end
  def show(conn, %{"username" => username}) do
     user = Repo.get_by!(User, username: username)
    # Logger.info user
    render(conn, "show.json", user: user)
  end
end