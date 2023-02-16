defmodule Greeting do
  @moduledoc """
  Documentation for `Greeting`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Greeting.hello()
      :world

  """
  def hello do
    :world
  end

  def main(args) do
    {opts, _word, _errors} =
      OptionParser.parse(args, switches: [time: :string, yusef: :string, upcase: :boolean])

    output = "Good #{opts[:time] || "morning"}#{" " <> opts[:yusef]}!"

    if opts[:upcase] do
      IO.puts(String.upcase(output))
    else
      IO.puts(output)
    end
  end
end
