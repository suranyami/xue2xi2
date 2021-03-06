defmodule Xue2xi2.Repo.Migrations.CreateEntries do
  use Ecto.Migration

  def change do
    create table(:entries) do
      add :traditional, :string, null: false
      add :simplified, :string, null: false
      add :pinyin, :string, null: false
      add :description, :text, null: false

      timestamps()
    end

    create index(:entries, [:traditional])
    create index(:entries, [:simplified])
    create index(:entries, [:pinyin])
  end
end
