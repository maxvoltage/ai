defmodule Ai.Media do
  use Ecto.Schema
  import Ecto.Changeset


  schema "medias" do
    field(:title, :string)
    field(:url, :string)

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :url])
    |> validate_required([:title, :url])
  end
end
