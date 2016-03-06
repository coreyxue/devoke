# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
rewards = Reward.create([
	{id:1, name: '擘畫', description: '壁紙畫', amount: 20, cost: 90},
	{id:2, name: 'T恤衫', description: '印有github標誌的上衣', amount: 20, cost: 90},
	{id:3, name: '原子杯', description: '原子標誌的水杯', amount: 20, cost: 90},
	{id:4, name: '小章魚塑像', description: 'github小章魚雕塑', amount: 20, cost: 90},
	{id:5, name: 'github貼紙', description: 'github系列貼紙', amount: 20, cost: 90},
	{id:6, name: 'Atom And Electron Sticker Pack', description: 'Add mass to your laptop and charge your accessories with this sticker pack made of Atoms and Electrons. These stickers are the nucleus of any good sticker collage. Keep an ion them, they’ll be gone soon.', amount: 20, cost: 90}])