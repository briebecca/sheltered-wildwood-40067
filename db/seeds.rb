# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count == 0
  User.create(email: 'hawkishtester@gmail.com', password: 'Pa$$w0rd', password_confirmation: 'Pa$$w0rd')
end

if Contact.count == 0
  Contact.create(first_name: 'Jim', last_name: 'Doe', phone: '310-999-9991')
  Contact.create(first_name: 'Jack', last_name: 'Doe', phone: '310-999-9992')
  Contact.create(first_name: 'Jill', last_name: 'Doe', phone: '310-999-9993')
end
