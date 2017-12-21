defmodule HelloPhoenix.Repo.Migrations.AddFieldsToRoom do
  use Ecto.Migration

  def change do
  	alter table(:message) do
  		add :room_id, :string
  	end
  end
end
