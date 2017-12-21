defmodule HelloPhoenix.RoomChannel do
	use Phoenix.Channel
	require Logger 

	def join("room:lobby", _message, socket) do
		Logger.info  "anaty room!"
		{:ok, socket}
	end 
end 