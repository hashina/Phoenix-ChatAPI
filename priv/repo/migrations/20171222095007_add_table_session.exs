defmodule HelloPhoenix.Repo.Migrations.AddTableSession do
  use Ecto.Migration

  def change do
  	create table(:session) do
  		add :token, :string

  		timestamps()
  	end
  end
end
