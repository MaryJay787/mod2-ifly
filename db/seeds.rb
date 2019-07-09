Airport.destroy_all
<<<<<<< HEAD
=======
Flyer.destroy_all
Conversation.destroy_all
Message.destroy_all
Meetup.destroy_all
>>>>>>> c7979f709967cd9e9733da09fbf6b55e04217d22

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)







Airport.create(name: "Hartsfield–Jackson Atlanta International Airport", img_url: "http://apps.atl.com/Passenger/ShopDineExplore/Default.aspx")
Airport.create(name: "Birmingham International Airport", img_url: "https://www.flybirmingham.com/in-the-airport/dining/")
Airport.create(name: "Phoenix, Phoenix Sky Harbor International Airport", img_url: "https://www.skyharbor.com/ShopsFoodServices/Dining")
Airport.create(name: "Los Angeles International Airport", img_url: "https://www.flylax.com/en/lax-dining-and-shopping")
Airport.create(name: "Oakland Airport", img_url: "https://www.oaklandairport.com/shopping-dining-options/")
Airport.create(name: "San Diego International Airport", img_url: "ps://www.san.org/Shop-Dine-Relax/Dining")
Airport.create(name: "San Francisco International Airport", img_url: "https://www.flysfo.com/shop-dine-relax/dining/")
Airport.create(name: "Denver International Airport", img_url: "https://www.flydenver.com/enjoy_relax/dine")
Airport.create(name: "New York, La Guardia Airport", img_url: "https://www.laguardiaairport.com/at-airport/shops-restaurants-and-services")


Flyer.create!(user_name: 'Aham', password: 'password', first_name: "Isha", last_name: "Ham", occupation: "Flight Attendant", description: "I love to travel.", img_url: "https://images.pexels.com/photos/935985/pexels-photo-935985.jpeg?cs=srgb&dl=accessories-afro-beautiful-935985.jpg&fm=jpg")
Flyer.create!(user_name: 'Please', password: 'password', first_name: "Paris", last_name: "Hillson", occupation: "Actor", description: "I love to put on a show.", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwbTJkyFIarft2UxH2XyE75RBbicb2wHDsYlx74CNOZWqu-3w6")
Flyer.create!(user_name: 'Baddie', password: 'password', first_name: "Maria", last_name: "Curson", occupation: "Beaution", description: "I love to make the world more beautiful", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWPXVfYwOUmSfsjKVvQCDz0LRyYeXTNtc2T3PMLdISKMi8mIaPqQ")

Conversation.create(sender_id: Flyer.first.id, recipient_id: Flyer.second.id)
Conversation.create(sender_id: Flyer.second.id, recipient_id: Flyer.third.id)
Conversation.create(sender_id: Flyer.third.id, recipient_id: Flyer.first.id)

Meetup.create(name: "One Flew South", location: "Concourse E", store_hours: "11am - 10pm", airport_id: Airport.first.id, conversation_id: Conversation.first.id, accepted: true)
Meetup.create(name: "Chicken+Beer", location: "Concourse D", store_hours: "10am - 10pm", airport_id: Airport.first.id, conversation_id: Conversation.first.id, accepted: true)
Meetup.create(name: "Varasano’s Pizzeria", location: "Concourse A", store_hours: "10:30am - 10pm", airport_id: Airport.first.id, conversation_id: Conversation.first.id, accepted: true)
Meetup.create(name: "Ecco", location: "Concourse F", store_hours: "10am - 10pm", airport_id: Airport.first.id, conversation_id: Conversation.second.id, accepted: true)
Meetup.create(name: "Jim 'N Nick's Bar-B-Q", location: "5900 Messer Airport Hwy", store_hours: "4am - 7pm", airport_id: Airport.second.id, conversation_id: Conversation.second.id, accepted: true)
Meetup.create(name: "The Local", location: "5900 Messer Airport Hwy", store_hours: "4:15am - 6:30pm", airport_id: Airport.second.id, conversation_id: Conversation.second.id, accepted: true)
Meetup.create(name: "Chic-fil-A", location: "5900 Messer Airport Hwy", store_hours: "4:15am - 7pm", airport_id: Airport.second.id, conversation_id: Conversation.third.id, accepted: true)
Meetup.create(name: "NYPD Pizza", location: "3800 E Sky Harbor Blvd,", store_hours: "7am - 9pm", airport_id: Airport.third.id, conversation_id: Conversation.third.id, accepted: true)
Meetup.create(name: "Chelsea's Kitchen", location: "4 E Sky Harbor Blvd", store_hours: "6am - 9spm", airport_id: Airport.third.id, conversation_id: Conversation.third.id, accepted: true)
Meetup.create(name: "Cheuvront Restaurant And Wine Bar", location: "3400 E Sky Harbor Blvd", store_hours: "11am - 10pm", airport_id: Airport.third.id, conversation_id: Conversation.first.id, accepted: true)
