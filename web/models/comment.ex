defmodule HelloPhoenix.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :body, :string
    field :delete, :boolean, virtual: true

    timestamps
  end

  def changeset(comment, params) do
    cast(comment, params, [:body, :delete])
    |> maybe_mark_for_deletion
  end

  defp maybe_mark_for_deletion(changeset) do
    if get_change(changeset, :delete) do
      %{changeset | action: :delete}
    else
      changeset
    end
  end
end