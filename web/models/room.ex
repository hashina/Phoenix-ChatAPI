defmodule HelloPhoenix.Room do
	use HelloPhoenix.Web, :model
	@derive {Poison.Encoder, only: [:id, :creatorId, :guestId, :message]}
	schema "room" do
		field :creatorId, :integer
		field :guestId, :integer
		has_many :message, HelloPhoenix.Message

		timestamps()
	end	
end