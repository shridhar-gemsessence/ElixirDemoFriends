defmodule Friends.Repo.Migrations.CreateActors do
  use Ecto.Migration

  def change do
    create table :actors do
      add :name, :string
      add :baseprice, :float, default: 0
    end
  end
end
