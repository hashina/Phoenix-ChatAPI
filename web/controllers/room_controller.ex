defmodule HelloPhoenix.RoomController do
	use HelloPhoenix.Web, :controller
	alias HelloPhoenix.Room
	alias HelloPhoenix.Message
	def show(conn, %{"client_id" => id})  do
		query = from(
				r in Room,
				preload: [:message, :creator, :guest],
				where: r.creator_id == ^id or r.guest_id == ^id 
			)
		rooms = Repo.all(query)
		render conn, "show.json" , rooms: rooms
  	end
end