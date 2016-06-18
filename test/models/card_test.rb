require 'test_helper'

class CardTest < ActiveSupport::TestCase
  test "Import Operation" do
    pokemon = "jolteon"
    Card::Import.(Pokemon::Card.where(name: pokemon).all.first.to_hash)
    assert_not_empty Card.all
  end

  test "Search Operation" do
    pokemon = "vaporeon"
    card = Card::Search.({name: pokemon})
    assert_not_nil card
  end

  test "Destroy Operation" do
    card = Card.create name: "test", image: "http://image.com", set: "someset", card_uid: "1234"
    Card::Destroy.({id: card.id})
    assert_empty Card.all
  end
end
