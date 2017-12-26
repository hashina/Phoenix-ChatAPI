defmodule HelloPhoenix.Repo.Migrations.AddTableMessage do
  use Ecto.Migration

  def change do
  	create table(:message) do
  		add :body, :text
  		add :room_id, references(:room, on_delete: :nothing)
  		timestamps()
  	end
  end
end
