

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Resort.destroy_all

Resort.create(name:'Loon', vertical: 2100, acres: 370, state:"NH",location:"Lincoln");
Resort.create(name:'Stowe', vertical: 2360, acres: 485, state:"VT",location:"Underhill_Center");
Resort.create(name:'Killington', vertical: 3050, acres: 1509, state:"VT",location:"Killington");
Resort.create(name:'Sunday River', vertical: 2350, acres: 870, state:"ME",location:"Bethel");
Resort.create(name:'Mount Snow', vertical: 1700, acres: 588, state:"VT",location:"Mount_Snow");
Resort.create(name:'Sugarloaf', vertical: 2820, acres: 1056, state:"ME",location:"Carrabassett Valley");
Resort.create(name:"Jay Peak", vertical:2153, acres:385, state:"VT",location:"Jay");
Resort.create(name:"Cannon",vertical:2180,acres:282, state:"NH",location:"Franconia");


#Resort.create(name:, vertical:, acres:, state:,location:);

#User.create(name:,username:,password:,privileges:)

