Airport.destroy_all
Flyer.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)








flyer1 = Flyer.create(user_name: 'Aham', password: 'password', first_name: "Isha", last_name: "Ham", occupation: "Flight Attendant", description: "I love to travel", img_url: "https://images.pexels.com/photos/935985/pexels-photo-935985.jpeg?cs=srgb&dl=accessories-afro-beautiful-935985.jpg&fm=jpg")


atl = Airport.create( name: 'Hartsfield–Jackson Atlanta International Airport', img_url: 'http://apps.atl.com/Passenger/ShopDineExplore/Default.aspx' )
bhm = Airport.create( name: 'Birmingham International Airport', img_url: 'https://www.flybirmingham.com/in-the-airport/dining/' )
phx = Airport.create( name: 'Phoenix, Phoenix Sky Harbor International Airport', img_url: 'https://www.skyharbor.com/ShopsFoodServices/Dining' )
lax = Airport.create(name: 'Los Angeles International Airport', img_url: 'https://www.flylax.com/en/lax-dining-and-shopping' )
oak = Airport.create( name: 'Oakland Airport', img_url: 'https://www.oaklandairport.com/shopping-dining-options/' )
san = Airport.create( name: 'San Diego International Airport', img_url: 'ps://www.san.org/Shop-Dine-Relax/Dining' )
sfo = Airport.create( name: 'San Francisco International Airport', img_url: 'https://www.flysfo.com/shop-dine-relax/dining/' )
den = Airport.create(name: 'Denver International Airport', img_url: 'https://www.flydenver.com/enjoy_relax/dine' )
lga = Airport.create( name: 'New York, La Guardia Airport', img_url: 'https://www.laguardiaairport.com/at-airport/shops-restaurants-and-services' )

