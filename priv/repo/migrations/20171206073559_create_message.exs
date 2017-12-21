defmodule HelloPhoenix.Repo.Migrations.CreateMessage do
  use Ecto.Migration

  def change do
  	create table(:message) do
  		add :content, :string

  		timestamps()
  	end
  end
end
