defmodule HelloPhoenix.SessionController do
	require Logger
	use HelloPhoenix.Web, :controller

	alias HelloPhoenix.User
	alias HelloPhoenix.Session 

	def create(conn, %{"user" => user_params}) do
		user = Repo.get_by(User, username: user_params["username"], password_hash: user_params["password"])
		cond do
			user->
				session_changeset = Session.registration_changeset(%Session{}, %{user_id: user.id})
				{:ok, session} = Repo.insert(session_changeset)
				conn
				|> put_status(:created)
				|> render("show.json", session: session)
			user ->
				conn
				|> put_status(:unauthorized)
				|> render("error.json", user_params)
			true ->
				conn
				|> put_status(:unauthorized)
				|>render("error.json", user_params)
		end
	end
end