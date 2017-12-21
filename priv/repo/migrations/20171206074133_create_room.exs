defmodule HelloPhoenix.Repo.Migrations.CreateRoom do
  use Ecto.Migration

  def change do
  	create table(:room) do
  		add :creatorId, :integer
  		add :guestId, :integer

  		timestamps()
  	end
  end
end
