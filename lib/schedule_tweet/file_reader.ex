defmodule ScheduleTweet.FileReader do
  @doc """
  This function read contents from a file and
  find a string that can be tweeted out.

  It will trim all strings, and then elimate any
  strings that are larger than 140 characters.

  iex> ScheduleTweet.FileReader.get_strings_to_tweet("priv/test/doc.txt")
  "Life is too short"

  iex> ScheduleTweet.FileReader.get_strings_to_tweet("priv/test/too_long.txt")
  "Short line."
  """

  def get_strings_to_tweet(filename) do
    File.read!(filename)
    # pipe( |> ) is a command which causes the output from one routine
    # to be the input for another.
    # we'll pipe the the content from file read into the
    # function pick_string
    |> pick_string
  end

  def pick_string(str) do
    str
    |> String.split("\n")
    # trim to remove whitespaces
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&String.length(&1) <= 140)
    # the above can be written like so:
    # |> Enum.filter(fn str -> String.length(str) <= 140)

    # Pick random tweet from sample txt file to send out
    |> Enum.random()
  end
end
