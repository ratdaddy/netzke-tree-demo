# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

parent_1 = Truffula.create(title: 'Once-ler')
child_1 = Truffula.create(parent: parent_1, title: 'Brown Bar-ba-loot')
parent_2 = Truffula.create(title: 'Swomee Swans')
