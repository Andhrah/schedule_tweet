defmodule FileReaderTest do
  use ExUnit.Case
  import ScheduleTweet.FileReader
  import Mock

  doctest ScheduleTweet.FileReader
  test "passing a file should return a string" do
    str = get_strings_to_tweet(Path.join("#{:code.priv_dir(:schedule_tweet)}", "sample.txt"))

    assert str != nil
  end

  test "Will not return a string longer than 140 character" do
    str = get_strings_to_tweet(Path.join("#{:code.priv_dir(:schedule_tweet)}", "/test/too_long.txt"))

    assert str == "Short line."
  end

  test "An empty string should return an empty string" do
    with_mock File, [read!: fn(_) -> "" end] do
      str = pick_string("")

      assert str == ""
    end
  end

  test "The string should be trimmed" do
    with_mock File, [read!: fn(_) -> " ABC " end] do
      str = get_strings_to_tweet("doesn't exist.txt")

      assert str == "ABC"
    end
  end
end
