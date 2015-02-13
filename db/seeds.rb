# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# To make sure that each time we create the database, it is created with new information
User.destroy_all
Resort.destroy_all

users = User.create([
  {name: "Lindsay Vonn", zip: "90210", ski: true, snowboard: true, email: "lindsay.vonn@gmail.com", level: 4, travel: true, decision_driver: 3, airport: "LAX", password_digest: "abcdefg" },
  {name: "Shawn White", zip: "80123", ski: false, snowboard: true, email: "shawn.white@gmail.com", level: 4, travel: true, decision_driver: 2, airport: "ORD", password_digest: "abcdefg" },
  {name: "Kyle Mack", zip: "10011", ski: false, snowboard: true, email: "kyle.mack@gmail.com", level: 4, travel: true, decision_driver: 1, airport: "JFK", password_digest: "abcdefg" },
  {name: "Bob James", zip: "94107", ski: true, snowboard: false, email: "bob.james@gmail.com", level: 3, travel: false, decision_driver: 2, airport: "SFO", password_digest: "abcdefg" },
  {name: "Warren Miller", zip: "92626", ski: true, snowboard: true, email: "warren.miller@gmail.com", level: 4, travel: true, decision_driver: 2, airport: "SNA", password_digest: "abcdefg" }
  ])

resorts = Resort.create([
  # {name: "Deer Valley Resort", address: "2250 Deer Valley Drive South, Park City, UT, 84060", country: "USA", website: "www.deervalleyresort.com", phone_number: "1.800.424.3337", skiable_acres: 2026, lift_count: 24, run_count: 101, major_airport: "SLC", snowboard: false, level_green: 27, level_blue: 41, level_black: 16, level_double_black: 16 }, 
  # {name: "Whistler Blackcomb", address: "4545 Blackcomb Way, Whistler, BC VON 1B4", country: "Canada", website: "www.whistlerblackcomb.com", phone_number: "1.800.766.0449", skiable_acres: 8171, lift_count: 36, run_count: 200, major_airport: "YVR", snowboard: true, level_green: 17.5, level_blue: 55, level_black: 17.5, level_double_black: 10 }, 
  # {name: "Mammoth Mountain", address: "10001 Minaret Road, Mammoth Lakes, CA, 92546", country: "USA", website: "www.mammothmountain.com", phone_number: "1.800.626.6684", skiable_acres: 3500, lift_count: 28, run_count: 150, major_airport: "LAX", local_airport: "MMH", snowboard: true, level_green: 25, level_blue: 40, level_black: 20, level_double_black: 15 },
  # {name: "Snowbasin", address: "3925 East Snowbasin Road, Hunstville, UT, 84317", country: "USA", website: "www.snowbasin.com", phone_number: "1.888.437.5488", skiable_acres: 3000, lift_count: 9, run_count: 104, major_airport: "SLC", snowboard: true, level_green: 20, level_blue: 50, level_black: 15, level_double_black: 15 },
  {name: "Arapahoe Basin", address: "28194 US Highway 6, Dillon, CO 80435", country: "USA", website: "www.arapahoebasin.com", phone_number: "1.888.272.7246", skiable_acres: 960, lift_count: 8, run_count: 109, major_airport: "DEN", snowboard: true, level_green: 10, level_blue: 30, level_black: 37, level_double_black: 23 }, 
  {name: "Aspen (AJAX) Resort", address: "601 East Deen Street, Aspen, CO, 81611", country: "USA", website: "www.skiaspen.com", phone_number: "1.800.262.7736", skiable_acres: 673, lift_count: 8, run_count: 76, major_airport: "DEN", local_airport: "ASE", snowboard: true, level_green: 0, level_blue: 48, level_black: 26, level_double_black: 26 }, 
  {name: "Alyeska Resort", address: "1000 Arlberg Avenue, Girdwood, AK, 99587", country: "USA", website: "www.alyeskaresort.com", phone_number: "1.800.880.3880", skiable_acres: 1400, lift_count: 9, run_count: 73, major_airport: "ANC", snowboard: true, level_green: 11, level_blue: 52, level_black: 18.5, level_double_black: 18.5 },
  {name: "Kicking Horse Resort", address: "1500 Kicking Horse Trail, Golden, BC V0A 1H0", country: "Canada", website: "www.kickinghorseresort.com", phone_number: "1.866.754.5425", skiable_acres: 2800, lift_count: 8, run_count: 120, major_airport: "YYC", snowboard: true, level_green: 20, level_blue: 20, level_black: 45, level_double_black: 15 }
  ])