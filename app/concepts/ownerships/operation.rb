class Ownership < ActiveRecord::Base
  # Add Card Operation
  class AddCard < Trailblazer::Operation
    def process(params)
      Ownership.find(params[:ownership_id]).cards << Card.find(params[:card_id])
    end
  end

  # Destroy Card Operation
  class DestroyCard < Trailblazer::Operation
    def process(params)
      Ownership.find(params[:ownership_id]).cards.delete(Card.find(params[:card_id]))
    end
  end
end
