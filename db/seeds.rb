Airport.destroy_all
Flyer.destroy_all
Conversation.destroy_all
Message.destroy_all
Meetup.destroy_all

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
Airport.create(name: "San Diego International Airport", img_url: "https://www.san.org/Shop-Dine-Relax/Dining")
Airport.create(name: "San Francisco International Airport", img_url: "https://www.flysfo.com/shop-dine-relax/dining/")
Airport.create(name: "Denver International Airport", img_url: "https://www.flydenver.com/enjoy_relax/dine")
Airport.create(name: "New York, La Guardia Airport", img_url: "https://www.laguardiaairport.com/at-airport/shops-restaurants-and-services")


Flyer.create!(user_name: 'Aham', password: 'password', first_name: "Isha", last_name: "Ham", occupation: "Flight Attendant", description: "I love to travel.", img_url: "http://kodlikes.com/go/aHR0cDovL3d3dy5zY2Fsc3lzLmNvbS8xcG5ncy9ibGFjay13b21hbi1wbmcvdmlldy1pbWFnZS5waHA/ZmlsZT0uL2JsYWNrX3dvbWFuX3BuZ18xNDEwMjAucG5n", airport_id: Airport.first.id)
Flyer.create!(user_name: 'Please', password: 'password', first_name: "Paris", last_name: "Hillson", occupation: "Actor", description: "I love to put on a show.", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwbTJkyFIarft2UxH2XyE75RBbicb2wHDsYlx74CNOZWqu-3w6", airport_id: Airport.second.id)
Flyer.create!(user_name: 'Baddie', password: 'password', first_name: "Maria", last_name: "Curson", occupation: "Beaution", description: "I love to make the world more beautiful", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWPXVfYwOUmSfsjKVvQCDz0LRyYeXTNtc2T3PMLdISKMi8mIaPqQ", airport_id: Airport.second.id)
Flyer.create!(user_name: 'Chris', password: 'password', first_name: "Christopher", last_name: "Swofford", occupation: "Software Engineer", description: "I love Marlin!", img_url: "https://avatars0.githubusercontent.com/u/47920045?s=460&v=4", airport_id: Airport.second.id)
Flyer.create!(user_name: 'Zach', password: 'password', first_name: "Zach", last_name: "Parker", occupation: " Senior DEV", description: "I love the Mountains!", img_url: "https://avatars0.githubusercontent.com/u/50035946?s=460&v=4", airport_id: Airport.second.id)
Flyer.create!(user_name:  'Cat', password: 'password', first_name: "Cat", last_name: "B", occupation: "Senior DEV", description: "I get sh*t Done", img_url: "https://avatars0.githubusercontent.com/u/40864734?s=400&v=4", airport_id: Airport.second.id)
Flyer.create!(user_name:  'Rere', password: 'password', first_name: "Reina", last_name: "Ewing", occupation: "Mom", description: "I Got you. I will take care of it!", img_url: "https://avatars1.githubusercontent.com/u/48366278?s=400&v=4", airport_id: Airport.second.id)
Flyer.create!(user_name:  'Con', password: 'password', first_name: "Conrad", last_name: "Casper", occupation: "Full Stack Web Developer", description: "I'm from Texas, where everthing is big!", img_url: "https://media.licdn.com/dms/image/C4E03AQHqE1pkFQh6UA/profile-displayphoto-shrink_800_800/0?e=1568246400&v=beta&t=vyicZ0oLqG-cZFMpP4KqKMgi_QfP5p8QDLAN_DBS29E", airport_id: Airport.second.id)
Flyer.create!(user_name:  'Kal', password: 'password', first_name: "Christopher", last_name: "Kalfas", occupation: "The Best Dev", description: "Have you heard the Kalfinator?", img_url: "https://media.licdn.com/dms/image/C4D03AQElOPlYWNrMiw/profile-displayphoto-shrink_800_800/0?e=1568246400&v=beta&t=6SZLND1zUS2JORRfqg2fq_cqPqUQ37JJdAaDuREyq2k", airport_id: Airport.second.id)


Conversation.create(sender_id: Flyer.first.id, recipient_id: Flyer.second.id)
Conversation.create(sender_id: Flyer.second.id, recipient_id: Flyer.third.id)
Conversation.create(sender_id: Flyer.third.id, recipient_id: Flyer.first.id)

Meetup.create(name: "One Flew South", location: "Concourse E", store_hours: "11am - 10pm", airport_id: Airport.first.id, conversation_id: Conversation.first.id)
Meetup.create(name: "Chicken+Beer", location: "Concourse D", store_hours: "10am - 10pm", airport_id: Airport.first.id, conversation_id: Conversation.first.id)
Meetup.create(name: "Varasano’s Pizzeria", location: "Concourse A", store_hours: "10:30am - 10pm", airport_id: Airport.first.id, conversation_id: Conversation.first.id)
Meetup.create(name: "Ecco", location: "Concourse F", store_hours: "10am - 10pm", airport_id: Airport.first.id, conversation_id: Conversation.second.id)
Meetup.create(name: "Jim 'N Nick's Bar-B-Q", location: "5900 Messer Airport Hwy", store_hours: "4am - 7pm", airport_id: Airport.second.id, conversation_id: Conversation.second.id)
Meetup.create(name: "The Local", location: "5900 Messer Airport Hwy", store_hours: "4:15am - 6:30pm", airport_id: Airport.second.id, conversation_id: Conversation.second.id)
Meetup.create(name: "Chic-fil-A", location: "5900 Messer Airport Hwy", store_hours: "4:15am - 7pm", airport_id: Airport.second.id, conversation_id: Conversation.third.id)
Meetup.create(name: "NYPD Pizza", location: "3800 E Sky Harbor Blvd,", store_hours: "7am - 9pm", airport_id: Airport.third.id, conversation_id: Conversation.third.id)
Meetup.create(name: "Chelsea's Kitchen", location: "4 E Sky Harbor Blvd", store_hours: "6am - 9spm", airport_id: Airport.third.id, conversation_id: Conversation.third.id)
Meetup.create(name: "Cheuvront Restaurant And Wine Bar", location: "3400 E Sky Harbor Blvd", store_hours: "11am - 10pm", airport_id: Airport.third.id, conversation_id: Conversation.first.id)


Message.create(content: "Hello first message", conversation_id: Conversation.first.id, flyer_id: Flyer.first.id)
Message.create(content: "Hi second message", conversation_id: Conversation.second.id, flyer_id: Flyer.second.id)
Message.create(content: "Hello third conversation", conversation_id: Conversation.third.id, flyer_id: Flyer.third.id)
