require 'test_helper'

class OwnershipTest < ActiveSupport::TestCase
  test "Get Ownership on Card" do
    Card::Import.(Pokemon::Card.where(name: 'mew').all.first.to_hash)
    card = Card.last
    collection = CardCollection.create
    ownership = Ownership.create card_collection_id: collection.id
    Ownership::AddCard.({ownership_id: ownership.id, card_id: card.id})

    assert_not_empty ownership.cards
  end

  test "Remove Ownership from Card" do
    Card::Import.(Pokemon::Card.where(name: 'mew').all.first.to_hash)
    card = Card.last
    collection = CardCollection.create
    ownership = Ownership.create card_collection_id: collection.id
    Ownership::AddCard.({ownership_id: ownership.id, card_id: card.id})

    assert_not_empty ownership.cards

    Ownership::DestroyCard.({ownership_id: ownership.id, card_id: card.id})

    assert_empty ownership.cards
  end
end
