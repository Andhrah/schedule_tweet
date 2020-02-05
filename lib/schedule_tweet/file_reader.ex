defmodule ScheduleTweet.FileReader do
  # this function read contents from a file.
  def get_strings_to_tweet(path) do
    File.read!(path)
    # pipe( |> ) is a command which causes the output from one routine
    # to be the input for another.
    # we'll pipe the the content from file read into the
    # function String.split and we'll pass it the new line character
    |> String.split("\n")
    # trim to remove whitespaces
    |> Enum.map(&String.trim/1)
    # check if the string is less than or equal to 140 character, which is the limit for tweet
    |> Enum.filter(&String.length(&1) <= 140)
    # the above can be written like so:
    # |> Enum.filter(fn str -> String.length(str) <= 140)
  end
end
