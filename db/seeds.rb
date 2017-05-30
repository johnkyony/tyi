# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

Post.delete_all
Category.delete_all
CategoryTag.delete_all 

CSV.foreach(Rails.root.join("db/seeds_data/category.csv"), headers: true) do |row|
 Category.create(id: row[0] , name: row[1],created_at: row[2],updated_at: row[3])
end

CSV.foreach(Rails.root.join("db/seeds_data/category_tag.csv") , headers: true ) do |row|
  CategoryTag.create(id: row[0] , name: row[1] , created_at: row[2] , updated_at: row[3] , category_id: row[4])
end

CSV.foreach(Rails.root.join("db/seeds_data/post.csv") , headers: true ) do |row| 
  Post.create(id: row[0] , title: row[1] , body: row[2] , published_at: row[3] , created_at: row[4] , updated_at: row[5] , user_id: row[6] , category_id: row[7] )
end
