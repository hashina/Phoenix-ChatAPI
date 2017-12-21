defmodule HelloPhoenix.Session do
  use HelloPhoenix.Web, :model

  schema "sessions" do
    field :token, :string
    belongs_to :user, HelloPhoenix.User

    timestamps()
  end

  @required_fields ~w(user_id)
  @optional_fields ~w()

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
  def registration_changeset(model, params \\ :empty) do
    model
    |> changeset(params)
    |> put_change(:token, SecureRandom.urlsafe_base64())
  end 
end
