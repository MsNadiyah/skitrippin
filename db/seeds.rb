# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# To make sure that each time we create the database, it is created with new information
User.destroy_all

users = User.create([
  {name: "Lindsay Vonn", zip: "90210", ski: true, snowboard: true, email: "lindsay.vonn@gmail.com", level: 4, travel: true, decision_driver: 3},
  {name: "Shawn White", zip: "90043", ski: false, snowboard: true, email: "shawn.white@gmail.com", level: 4, travel: true, decision_driver: 2},
  {name: "Kyle Mack", zip: "90290", ski: false, snowboard: true, email: "kyle.mack@gmail.com", level: 4, travel: true, decision_driver: 1},
  {name: "Bob James", zip: "92626", ski: true, snowboard: false, email: "bob.james@gmail.com", level: 3, travel: false, decision_driver: 2},
  {name: "Warren Miller", zip: "90210", ski: true, snowboard: true, email: "warren.miller@gmail.com", level: 4, travel: true, decision_driver: 2},
  ])