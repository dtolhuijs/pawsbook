# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Picture.delete_all
cocoa_butter = User.create( {name: "Cocoa Butter",     animal: "cat",  gender: "female" })
flopsy_jefferson = User.create( {name: "Flopsy Jefferson", animal: "cat",  gender: "male" })
User.create( {name: "June Bug",         animal: "cat",  gender: "male" })
User.create( {name: "Hugo Deli",        animal: "dog",  gender: "male" })
User.create( {name: "Muff Van Helsin",  animal: "dog",  gender: "male" })
User.create( {name: "Jose Ramos",       animal: "dog",  gender: "male" })

pic = Picture.create(user: cocoa_butter)
pic.name.store!(File.open(Rails.root.join('app', 'assets', 'images', 'cocoa_butter.jpg')))
pic.save!

pic = Picture.create(user: flopsy_jefferson)
pic.name.store!(File.open(Rails.root.join('app', 'assets', 'images', 'flopsy.jpg')))
pic.save!
