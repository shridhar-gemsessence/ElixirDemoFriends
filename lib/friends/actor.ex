defmodule Friends.Actor do
  use Ecto.Schema

  schema "actors" do
    field :name, :string
    field :baseprice, :float, default: 0
    has_many :characters, Friends.Character
    many_to_many :movies, Friends.Movie, join_through: "movies_actors"
  end
end
