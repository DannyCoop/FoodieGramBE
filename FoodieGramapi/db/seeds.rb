# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Comment.destroy_all

user1 = User.create(username: "user1", bio:"Hey it's me!")
user2 = User.create(username: "user2", bio:"Hey it's not me!")

post1 = Post.create(caption: "post1", image_url: "somethig.com", user_id: 1)
post2 = Post.create(caption: "post2", image_url: "somethig.com", user_id: 2)

comment1 = Comment.create(text: "this is a comment", user_id: 1, post_id: 1)
comment2 = Comment.create(text: "this is another comment", user_id: 2, post_id: 2)
comment3 = Comment.create(text: "this is another comment2", user_id: 1, post_id: 2)


