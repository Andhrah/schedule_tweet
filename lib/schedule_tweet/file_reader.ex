defmodule ScheduleTweet.FileReader do
  # this function read contents from a file.
  def get_strings_to_tweet(path) do
    File.read!(path)
  end
end
