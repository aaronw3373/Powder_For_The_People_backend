

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Resort.destroy_all

Resort.create(name:'Loon', vertical: 2100, acres: 370, location:"pws:KNHLINCO2")
Resort.create(name:'Stowe', vertical: 2360, acres: 485, location:"pws:MMMNV1")
Resort.create(name:'Killington', vertical: 3050, acres: 1509, location:"pws:KVTKILLI2")
Resort.create(name:'Sunday River', vertical: 2350, acres: 870, location:"pws:KMENEWRY6")
Resort.create(name:'Mount Snow', vertical: 1700, acres: 588, location:"pws:MMSWV1")
Resort.create(name:'Sugarloaf', vertical: 2820, acres: 1056, location:"pws:KMECARRA3")
Resort.create(name:"Jay Peak", vertical:2153, acres:385, location:"pws:KVTMONTG3")
Resort.create(name:"Cannon",vertical:2180,acres:282, location:"pws:KNHFRANC6")
Resort.create(name:"Smugglers Notch", vertical:2610, acres:1000, location:"pws:MMMNV1")
Resort.create(name:"Sugarbush", vertical:2600, acres:578, location:"pws:KVTWARRE3")
Resort.create(name:"Mad River Glen", vertical:2037, acres:120, location:"pws:KVTSTARK2")
Resort.create(name:"Jackson Hole", vertical:4139, acres:2500, location:"pws:MJHR");
Resort.create(name:"Mount Sunapee", vertical:1510, acres:233, location:"pws:ME1526");
Resort.create(name:"Vail", vertical:3450, acres:5289, location:"pws:KCOVAIL6");
Resort.create(name:"Wildcat", vertical:2112, acres:225, location:"pws:KNHJACKS6");
Resort.create(name:"Okemo", vertical:2100, acres:632, location:"pws:KVTLUDLO1");
Resort.create(name:"Waterville Valley", vertical:2020, acres:259, location:"pws:MWVVN3");
Resort.create(name:"Stratton", vertical:2003, acres:625, location:"pws:KVTSTRAT6");
Resort.create(name:"Saddleback", vertical:2000, acres:220, location:"pws:KMERANGE10");
Resort.create(name:"Burke", vertical:2000, acres:260, location:"pws:MGALV1");
Resort.create(name:"Pico", vertical:1967, acres:468, location:"pws:KVTBRIDG2");
Resort.create(name:"Attitash", vertical:1750, acres:310, location:"pws:KNHGLEN2");
Resort.create(name:"Magic Moutain", vertical:1700, acres:195, location:"pws:KVTCHEST5");
Resort.create(name:"Bolton Valley", vertical:1625, acres:165, location:"pws:KVTBOLTO2");
#Resort.create(name:"", vertical:, acres:, location:"pws:");

puts "CREATED 24 RESORTS"
#Resort.create(name:"", vertical:, acres:, location:"pws:");




User.destroy_all

User.create!(name:"Aaron",email:"aaronw3373@gmail.com", privileges:"god", password: 'password1')


puts "CREATED 1 USER"
# User.create(name:,username:,password:,privileges:)





