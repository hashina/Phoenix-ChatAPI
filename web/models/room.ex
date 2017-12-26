defmodule HelloPhoenix.Room do
	use HelloPhoenix.Web, :model
	@derive {Poison.Encoder, only: [:id, :creator, :guest, :message]}
	schema "room" do
		belongs_to :creator, HelloPhoenix.User, foreign_key: :creator_id 
		belongs_to :guest, HelloPhoenix.User, foreign_key: :guest_id
		has_many :message, HelloPhoenix.Message
		timestamps()
	end	
end