defmodule Proker.Task do
  use Proker.Web, :model

  schema "tasks" do
    field :title, :string
    field :priority, :integer
    belongs_to :project, Proker.Project

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :priority])
    |> validate_required([:title, :priority])
  end
end
