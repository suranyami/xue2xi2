defmodule Xue2xi2.CEDictParser do
  alias Xue2xi2.{Entry, Repo}

  def parse(file) do
    File.stream!(file)
    |> Stream.map(fn line ->
      with {:ok, entry} <- parse_line(line)
      do
        IO.puts entry.pinyin
        entry
      end
    end)
    |> Enum.to_list()
  end

  def parse_line(line) when binary_part(line, 0, 1) == "#", do: nil
  def parse_line(line) do
    [_, start, descr] =
      ~r/^(.+)\/(.+)\/$/Uui
      |> Regex.run(line)

    [_, chinese, pinyin] =
      ~r/^(.+)\[(.+)\]/Uui
      |> Regex.run(start)


    [traditional, simplified | _] = String.split(chinese, " ")
    %Entry{
      traditional: traditional,
      simplified: simplified,
      pinyin: pinyin,
      description: String.replace(descr, "/", "\n")
    }
    |> Repo.insert()
  end
end
