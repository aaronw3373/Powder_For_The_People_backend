

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Resort.destroy_all

Resort.create(name:'Loon', vertical: 2100, acres: 370, location:"pws:KNHLINCO2");
Resort.create(name:'Stowe', vertical: 2360, acres: 485, location:"pws:MMMNV1");
Resort.create(name:'Killington', vertical: 3050, acres: 1509, location:"pws:KVTKILLI2");
Resort.create(name:'Sunday River', vertical: 2350, acres: 870, location:"pws:KMENEWRY6");
Resort.create(name:'Mount Snow', vertical: 1700, acres: 588, location:"pws:MMSWV1");
Resort.create(name:'Sugarloaf', vertical: 2820, acres: 1056, location:"pws:KMECARRA3");
Resort.create(name:"Jay Peak", vertical:2153, acres:385, location:"pws:KVTMONTG3");
Resort.create(name:"Cannon",vertical:2180,acres:282, location:"pws:KNHFRANC6");


#Resort.create(name:"", vertical:, acres:, location:"pws:");

#User.create(name:,username:,password:,privileges:)

