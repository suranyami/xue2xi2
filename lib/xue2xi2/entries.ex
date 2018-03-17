defmodule Xue2xi2.Entries do
  alias Xue2xi2.{Repo, Entry}

  def destroy_all do
    Repo.delete_all(Entry)
  end
end
