# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Comment.count == 0
    Comment.create!(text: "example 1")
    Comment.create!(text: "example 2")
    Comment.create!(text: "example 3")
end

if Product.count == 0
    Product.create!(name: "beer test 1", title: "beer test 1", description: "beer test1", price: 15)
    #Comment.create!(text: "example 2")
    #Comment.create!(text: "example 3")
end


#name: "beer test 1", title: "beer test 1", description: "beer test1", price: 15