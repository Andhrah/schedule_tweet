defmodule ScheduleTweet.TweetServer do
  # GenServer(generic server) is a way to send messages to a process. 
  # Its also a way to make sure that even if the process dies that
  # we'll be able to restart it.
  use GenServer

  # start_link() function only calls Genserver start_link function
  def start_link(_) do
    # Genserver.start_link takes a first parameter
    # of dunder module which will reference current module.
    # While the second parameter is the initial state of the server.
    GenServer.start_link(__MODULE__, :ok, name: :tweet_server)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  # This is an asynchronous function that sends out tweet
  def handle_cast({:tweet, tweet}, _) do
    ScheduleTweet.Tweet.send(tweet)
    {:noreply, %{}}
  end

  def tweet(tweet) do
    GenServer.cast(:tweet_server, {:tweet, tweet})
  end
end
