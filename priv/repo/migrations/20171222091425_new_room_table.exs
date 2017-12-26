defmodule HelloPhoenix.Repo.Migrations.NewRoomTable do
  use Ecto.Migration

  def change do
  	create table(:room) do
  		timestamps()
  	end
  end
end
