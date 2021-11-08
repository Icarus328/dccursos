# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Run 'rake db:seed' from terminal to create an Admin User in your database
    
    #Seed DB with at least 1 Admin User

    User.new ({
        username: "admin",
        email: "admin@rubyonrails.com",
        age: 42069,
        password: "password",
        password_confirmation: "password",
        admin: true
    })

    user = User.new
    user.email = "admin@rubyonrails.com"
    user.username = "admin"
    user.age = 42069
    user.password = "password"
    user.password_confirmation = "password"
    user.admin = true
    user.save!