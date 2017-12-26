defmodule HelloPhoenix.Repo.Migrations.NewRoomTable0 do
  use Ecto.Migration
  
 def change do
  	create table(:room) do
  		timestamps()
  	end
  end
end
