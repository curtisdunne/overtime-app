# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.create(email: "curtdunne@gmail.com", first_name: "Curtis", last_name: "Dunne", password: "password", password_confirmation: "password")
puts "1 User created"

AdminUser.create(email: "admin@example.com", password: "password", password_confirmation: "password", first_name: "Admin", last_name: "User")
puts "1 Admin User created"

100.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, status: 0, overtime_request: 2.5)
end

puts "100 Posts have been created"
