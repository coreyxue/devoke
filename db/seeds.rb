# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
rewards = Reward.create([{name: '十字架手链', description: '用于募捐的十字架手链', amount: 20, cost: 90},
	{name: '钥匙链', description: '用于募捐的钥匙链', amount: 20, cost: 90},
	{name: '手机链', description: '用于募捐的手机链', amount: 20, cost: 90}])