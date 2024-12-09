defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "greets the world" do
    assert Cards.hello() == :world
  end

  test "tests the deck" do
    deck = Cards.create_deck()
    arrOfCards = ["Ace of Diamonds", "King of Hearts", "Six of Spades", "Jack of Clubs"]
    for card <- arrOfCards do
      assert Enum.member?(deck, card)
    end
  end

  test "Create_deck makes 52 cards" do
    deck = Cards.create_deck()
    assert length(deck) == 52
  end

  test "Test shuffling the deck" do
    deck = Cards.create_deck()
    deck2 = Cards.shuffle(deck)
    assert deck != deck2
    refute deck == deck2
  end

end
