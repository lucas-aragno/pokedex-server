class CardCollection < ActiveRecord::Base
  class Create < Trailblazer::Operation
    def process(params)
      collection = CardCollection.create({user_id: params[:user_id]})
      Ownership.create card_collection_id: collection.id
    end
  end
end
