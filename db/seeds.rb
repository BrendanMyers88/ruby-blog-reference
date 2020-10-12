# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

authors = ["Brendan", "Chris", "Adam", "Spencer", "Kobe", "Carolina"].map do |name|
  Author.create(name: name, position: "programmer")
end


posts = ["Blog 1", "Blog 2", "Blog 3", "Blog 4", "Blog 5", "Blog 6"].each_with_index.map do |title, index|
  Post.create(title: title, body: 'asfd', author_id: authors[index].id)
end
