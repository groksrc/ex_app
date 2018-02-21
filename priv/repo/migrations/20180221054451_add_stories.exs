defmodule ExApp.Repo.Migrations.AddStories do
  use Ecto.Migration

  def change do
    create table(:stories) do
      add :title, :string
      add :short, :string, size: 280
      add :body, :text

      timestamps()
    end
  end
end
