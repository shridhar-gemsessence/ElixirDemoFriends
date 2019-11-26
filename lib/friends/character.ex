defmodule Friends.Character do
  use Ecto.Schema

  schema "characters" do
    field :name, :string, null: false
    belongs_to :movie, Friends.Movie
    belongs_to :actor, Friends.Actor
  end
end
