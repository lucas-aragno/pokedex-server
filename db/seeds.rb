# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
p "IMPORTING CARDS"
cards = ['charizard','blastoise','venusaur'].map do |pokemon|
  Card::Import.(Pokemon::Card.where(name: pokemon).all.first.to_hash)
end

puts "CARD IMPORTED: #{cards}"


p "CREATING DUMMY USER"

user = User.create email: "test@test.me", password: "123456789"

p "CREATING COLLECTION"

collection = CardCollection::Create.({user_id: user.id})


p "ADD CARDS TO COLLECTION"
ownership = Ownership.last
Card.all.each do |card|
  Ownership::AddCard.({ownership_id: ownership, card_id: card})
end
