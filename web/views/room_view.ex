defmodule HelloPhoenix.RoomView do
	use HelloPhoenix.Web, :view 
	alias HelloPhoenix.Room 
	def render("index.json", %{rooms: rooms}) , do: rooms 
	def render("show.json", %{rooms: rooms}) do
		%{rooms: rooms}
	end
end