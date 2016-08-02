defmodule Proker.Repo.Migrations.CreateProject do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :title, :string
      add :color, :string

      timestamps()
    end

  end
end
