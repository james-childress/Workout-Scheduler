# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "James Childress",
             email: "jchild@sas.upenn.edu",
             password:              "password",
             password_confirmation: "password",
             admin: true)
             
User.create!(name:  "Amber Hu",
             email: "amberhu@sas.upenn.edu",
             password:              "password",
             password_confirmation: "password",
             admin: false)