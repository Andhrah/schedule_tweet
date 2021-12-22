# Schedule Tweet

**Vision: This is an application that schedule tweet and tweet it out**

## Application Overview

This is an application that will read in a file of text, parse it, format it accordingly and then tweet it out. It will do all of this on a schedule. For example, the first of the month

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `schedule_tweet` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:schedule_tweet, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/schedule_tweet](https://hexdocs.pm/schedule_tweet).

## Setup

Step by step instructions on how to get the code setup locally. 

- Clone the repository.

```
git clone https://github.com/Andhrah/schedule_tweet.git
```

- Then run

```
mix deps.get
```

- Create an app on [twitter-dev](https://developer.twitter.com/en) to get your api keys and access token

- Setup your twitter api keys and access token in your terminal, if you use zsh run

```
nano ~/.zshrc
```

- if you use bash, run

```
nano ~/.bashrc
```

- Then use the following variables for your keys

```
export TWEET_TWITTER_CONSUMER_API_KEY=replace_me_with_your_api_key
export TWEET_TWITTER_CONSUMER_API_KEY_SECRET=replace_me_with_your_secret_key
export TWEET_TWITTER_ACCESS_TOKEN=replace_me_with_your_access_token
export TWEET_TWITTER_ACCESS_TOKEN_SECRET=replace_me_with_your_access_token_secret
```

- Close your terminal to refresh or for zsh run `source ~/.zshrc`  or for bash run `source ~/.bashrc` to refresh

- Start the server/app with

```
mix run --no-halt
```
