defmodule HelloPhoenix.RoomChannel do
	use Phoenix.Channel
	require Logger 

	def join("room:" <> room_id, _message, socket) do
		Logger.info  "anaty room:" <> room_id
		{:ok, socket}
	end
	def handle_in("new_msg", %{"body" => body}, socket) do
    	broadcast! socket, "new_msg", %{body: body}
    	{:noreply, socket}
 	 end
end 