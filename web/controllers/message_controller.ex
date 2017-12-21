defmodule HelloPhoenix.MessageController do
	use HelloPhoenix.Web, :controller
	alias HelloPhoenix.Room
	alias HelloPhoenix.Message

	def show(conn, %{"id" => id}) do
		json(conn, Message |> Repo.get(id) |> Repo.preload(:room))		
	end 
end