defmodule Proker.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :string
      add :priority, :integer
      add :project_id, references(:projects, on_delete: :nothing)

      timestamps()
    end
    create index(:tasks, [:project_id])

  end
end
