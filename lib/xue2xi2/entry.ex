defmodule Xue2xi2.Entry do
  use Ecto.Schema
  import Ecto.Changeset

  schema "entries" do
    field :description, :string
    field :pinyin, :string
    field :simplified, :string
    field :traditional, :string

    timestamps()
  end

  @doc false
  def changeset(entry, attrs) do
    entry
    |> cast(attrs, [:traditional, :simplified, :pinyin, :description])
    |> validate_required([:traditional, :simplified, :pinyin, :description])
  end

end
