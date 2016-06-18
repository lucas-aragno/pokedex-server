require 'test_helper'

class CardCollectionTest < ActiveSupport::TestCase
  test "Create Collection" do
    user = User.create email: 'test@test.me', password: '12345566'
    CardCollection::Create.({user_id: user.id})
  end
end
