defmodule Proker.Project do
  use Proker.Web, :model

  schema "projects" do
    field :title, :string
    field :color, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :color])
    |> validate_required([:title, :color])
  end
end
