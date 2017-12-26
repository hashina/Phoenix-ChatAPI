defmodule HelloPhoenix.Repo.Migrations.NewRoomTable1 do
  use Ecto.Migration

  def change do
  	alter table(:room) do
  		add :creator_id, references(:users, on_delete: :nothing)
  		add :guest_id, references(:users, on_delete: :nothing)
  	end
  end
end
