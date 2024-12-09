defmodule Cards do
  @moduledoc """
    Documentation for Cards.
    Provides methods for cards and deck handling.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  def hello do
    :world
  end


  @doc """
  create_deck3.
  This function creates a deck of cards. It uses two nested for-loops. As a result we have 4 arrays of cards as return value.

  ## Examples

      iex> Cards.create_deck3()

  """
  def create_deck3 do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits do
      for value <- values do
       "#{value} of #{suit}"
      end
    end
  end

  @doc """
  create_deck2.
  This function creates a deck of cards and flattens it. It also uses two nested for-loops.
  As a result we have one array with all possible cards.

  ## Examples

      iex> Cards.create_deck2()

  """
  def create_deck2 do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    cards = for suit <- suits do
      for value <- values do
        "#{value} of #{suit}"
      end
    end

    List.flatten(cards)
  end

  @doc """
  create_deck.
  This function creates a deck of cards, flattens it. It uses functional approach.

  ## Examples

      iex> deck = Cards.create_deck()
      iex> {hand, deck} = Cards.deal(deck,1)
      iex> hand
      ["Ace of Spades"]

  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    cards = for suit <- suits,  value <- values do
      "#{value} of #{suit}"
    end

    List.flatten(cards)
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end


  @doc """
    Determines whether a deck contains a given card.

  ## Examples
      iex> deck = Cards.create_deck
      iex> Cards.contains?(deck, "Ace of Spades")
      true
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

#   {hand, deck} = Cards.deal(deck, 4)
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end


#  Cards.load("test.txt")       # ok
#  Cards.load("test.txt2")      # nok
  def load2(filename) do
    {status, binary} = File.read(filename)

    case status do
      :ok -> :erlang.binary_to_term(binary)
      :error -> "File not exists"
    end
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "File not exists"
    end
  end

#  def create_hand(hand_size) do
#    deck = Cards.create_deck()
#    deck = Cards.shuffle(deck)
#    hand = Cards.deal(deck, hand_size)
#  end

  def create_hand(hand_size) do
    Cards.create_deck
     |> Cards.shuffle
     |> Cards.deal(hand_size)
  end
end
