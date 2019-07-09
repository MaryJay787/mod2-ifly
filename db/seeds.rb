Airport.destroy_all
Flyer.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.create(name: "Southwest Georgia Regional Airport")
Airport.create(name: "Hartsfield-Jackson Atlanta International Airport")
Airport.create(name: "Augusta Regional Airport")
Airport.create(name: "Brunswick Golden Isles Airport")
Airport.create(name: "Columbus Metropolitan Airport")
Airport.create(name: "Savannah/Hilton Head International Airport")
Airport.create(name: "Valdosta Regional Airport")

Flyer.create(user_name: "Nancy", password: "seriously", first_name: "Nancy", last_name: "Blue", occupation: "Teacher", img_url: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIQEBUQEhIVEBAQFQ8QDw8PDw8PDw8QFREWFhURFhUYHSggGBolHRUVITEhJSkrLi4uFyAzODMtNygtLisBCgoKDg0OGhAQGi0dHSUtLS0rLS0tLS0tLS0tLS0tLS0rLS0tLS0tLSstKy0tLS0rLS8vKy0vKy0tLS0tLS0rLf/AABEIALgBEQMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAAECBAUGBwj/xABCEAACAQIDBQQGBgkEAgMAAAABAgADEQQSIQUGMUFREyJhcTJCUoGRoQcWkrHB0RQVI1NUYoLw8UNyk6IzsiSj4f/EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EACMRAAICAgICAwEBAQAAAAAAAAABAhEDEiExBFETI0FhIjL/2gAMAwEAAhEDEQA/AO2G9H8pkxvP/KZgJSj9nMzDZnQDef8AlMX1n/lMwMklSoXMA3ZvHee3qmJd6P5T8pi18PaDRIck7yOi+sh9kxfWU+yflMMJJBIcj3Zt/WQ+yfiI/wBYz7PzmKKcXZnpDkN5G2N4j7PzjjeFvZ+cxQkKtOFsN5Guu329n5wybbY+r85jCnLNKnHyPZmsu1mPq/OTG1D0+cz0STyxj2Ze/Wh6fOP+sz0+coZZLLAezLv6yPT5ytj94EoLnqEKPE6nyEpbTxqYek1V+CjQc2PICePby7abEsajk2OiIL2C8gByHjzmWTJrwuzow4nk5fR6nW+kfDLrm92tzry0k8L9IeFqELnyE+2Co+M8BqYk3y8z6oHLxiw1XXKW4cLm4HhJ3n2b/Dj65Pp1dqEi4sQdQQbgiONot0njW529FTDsKVQlqZOik6f0k8D4cDPWMJVWogdDdW4H8POXDIpcfpzZcUsb/hfpY4lrWksVjCnvlagveEntFeE0MrdEf1o3T5xNtJhylRUhKqaQJ2YettFgua3CZ", airport_id: Airport.first.id, description: "I Love Teaching")
