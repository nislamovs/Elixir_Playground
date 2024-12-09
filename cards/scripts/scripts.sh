#!/bin/bash

#Generate new project cards
mix new cards

#run the tests
mix test test/*

#install new dependencies
mix deps.get

#generate documentation
mix docs


# ------------------------------------------------------------------------------------------------------------------------

# Run interactive elixir shell
iex -S mix

# run method "hello" from module "Cards"
Cards.hello

#to recompile project
recompile


# ------------------------------------------------------------------------------------------------------------------------

Identicon.main("asdf")






