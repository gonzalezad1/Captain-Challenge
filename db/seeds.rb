# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Personnage.create(name: 'Le Conquerant',attac: 3,exp: 0,life: 10,velocity: 2 )
Weapon.create(name: "marteau" , attack: 3 , defense: 0 , velocity: -1)

Personnage.create(name: 'Le Roi',attac: 6,exp: 0,life: 8,velocity: 1 )
Weapon.create(name: "Hache", attack: 2 , defense: 1 , velocity: 0)
