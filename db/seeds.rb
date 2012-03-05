# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create a default user
puts "Create default user"
AdminUser.create!(:email => 'syaiful.sabril@gmail.com', :password => 'Passw0rd', :password_confirmation => 'Passw0rd', :roles => ["admin"])