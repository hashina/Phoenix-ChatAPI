defmodule HelloPhoenix.MessageController do
	require Logger
	use HelloPhoenix.Web, :controller
	alias HelloPhoenix.Room
	alias HelloPhoenix.Message

	def show(conn, %{"message_id" => id}) do
		json(conn, Message |> Repo.get(id) |> Repo.preload(:room))		
	end 
	def create(conn, params) do
		body = params["client_id"]
		Logger.info body
		changeset = Message.changeset(%Message{}, params)
		case Repo.insert(changeset) do
			{:ok, params} ->
				conn
				|> put_status(:created)
				|> render("show.json", message: params)
			{:error, changeset} ->
				conn
				|> put_status(:unprocessable_entity)
				|> render("error.json", changeset: changeset)
		end
	end
end