use Mix.Config

# config Quantum for this application
config :schedule_tweet, ScheduleTweet.Scheduler, jobs: [
  {"* * * *", fn -> 
    ScheduleTweet.FileReader.get_strings_to_tweet(
      Path.join("#{:code.priv_dir(:schedule_tweet)}", "sample.txt")
    )
    |> ScheduleTweet.TweetServer.tweet
  end}
]
