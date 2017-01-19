# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
rewards = Reward.create([
	{id:1, name: 'ITEM1', description: 'ITEM1 description', amount: 20, cost: 90},
	{id:2, name: 'ITEM2', description: 'ITEM2 description', amount: 20, cost: 90},
	{id:3, name: 'ITEM3', description: 'ITEM3 description', amount: 20, cost: 90},
	{id:4, name: 'ITEM4', description: 'ITEM4 description', amount: 20, cost: 90},
	{id:5, name: 'ITEM5', description: 'ITEM5 description', amount: 20, cost: 90},
	{id:6, name: 'Atom And Electron Sticker Pack', description: 'Add mass to your laptop and charge your accessories with this sticker pack made of Atoms and Electrons. These stickers are the nucleus of any good sticker collage. Keep an ion them, they’ll be gone soon.', amount: 20, cost: 90}])