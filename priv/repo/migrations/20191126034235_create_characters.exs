defmodule Friends.Repo.Migrations.CreateCharacters do
  use Ecto.Migration

  def change do
    create table :characters do
      add :name, :string, null: false
      add :movie_id, references :movies
      add :actor_id, references :actors
    end

    create unique_index(:characters, [:movie_id, :actor_id])
  end
end
