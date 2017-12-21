defmodule HelloPhoenix.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
  	create table(:comments) do
  		add :body, :string
  		add :delete, :boolean

  		timestamps()
  	end
  end
end
