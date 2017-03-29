# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Spree::Core::Engine.load_seed if defined?(Spree::Core)
#Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

Spree::StoreInfo.create(address: '06 Le Loi street', phone: '054 3 567 678', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore eveniet a cum, ad asperiores reprehenderit eius quas laborum dicta! Voluptatem excepturi distinctio, at ea non temporibus, amet? Velit, adipisci, omnis!')
