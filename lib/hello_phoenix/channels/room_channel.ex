defmodule HelloPhoenix.RoomChannel do
	use Phoenix.Channel
	require Logger 

	def join("room:" <> room_id, _message, socket) do
		Logger.info  "anaty room:" <> room_id
		{:ok, socket}
	end 
end 