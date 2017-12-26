defmodule HelloPhoenix.Repo.Migrations.ModifyTableSession1 do
  use Ecto.Migration

  def change do
		alter table(:sessions) do
  		 	add :user_id, references(:users, on_delete: :nothing)
  	end
  end
end
