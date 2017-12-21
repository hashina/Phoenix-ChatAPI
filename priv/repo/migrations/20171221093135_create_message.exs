defmodule HelloPhoenix.Repo.Migrations.CreateMessage do
  use Ecto.Migration

  def change do
    create table(:message) do
      add :body, :text
      add :room_id, references(:room, on_delete: :delete_all)

      timestamps()
    end
    create index(:message, [:room_id])

  end
end
