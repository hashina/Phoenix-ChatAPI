defmodule HelloPhoenix.RoomView do
	use HelloPhoenix.Web, :view 
	alias HelloPhoenix.Room 
	def render("show.json", %{rooms: rooms}) do
		%{rooms: rooms}
	end
end