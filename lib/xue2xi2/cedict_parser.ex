defmodule CEDictParser do
  def parse(file) do
    File.stream!(file)
    |> Stream.take(1)
    |> Enum.to_list()
  end
end
