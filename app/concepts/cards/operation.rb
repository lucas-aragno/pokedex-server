class Card < ActiveRecord::Base
  # Import Operation
  class Import < Trailblazer::Operation
    def process(card_representable)
      card = Card.create name: card_representable["name"], set: card_representable["set"], image: card_representable["imageUrl"], \
        rarity: card_representable["rarity"], card_uid: card_representable["id"], number: card_representable["number"], \
        set_code: card_representable["setCode"]
    end
  end
  # Search Operation
  class Search < Trailblazer::Operation
    def process(params)
      card = Card.find_by_name(params[:name])
      card.nil?
      card = Card::Import.(Pokemon::Card.where(name: params[:name]).all.first.to_hash)
    end
  end
  # Destroy Operation
  class Destroy < Trailblazer::Operation
    def process(params)
      Card.find(params[:id]).destroy!
    end
  end
end
