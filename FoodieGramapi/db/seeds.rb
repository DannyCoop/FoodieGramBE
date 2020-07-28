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

user1 = User.create(username: "user1", bio:"Hey it's me!", profilepic: "https://injectbox.com/instagram/img/profile.png")
user2 = User.create(username: "user2", bio:"Hey it's not me!", profilepic: "https://injectbox.com/instagram/img/profile.png")

post1 = Post.create(caption: "post1", image_url: "https://pbs.twimg.com/profile_images/637328898531926018/pJNVtD8w_400x400.jpg", user_id: user1.id)
post2 = Post.create(caption: "post2", image_url: "https://www.readyseteat.com/sites/g/files/qyyrlu501/files/uploadedImages/img_6941_6018.JPEG", user_id: user2.id)
post3 = Post.create(caption: "post3", image_url: "https://bigoven-res.cloudinary.com/image/upload/t_recipe-256/chocolate-chip-cookie-dough-ice-cream-2386254.jpg", user_id: user1.id)


comment1 = Comment.create(text: "this is a comment", user_id: user1.id, post_id: post1.id)
comment2 = Comment.create(text: "this is another comment", user_id: user2.id, post_id: post2.id)
comment3 = Comment.create(text: "this is another comment2", user_id: user1.id, post_id: post2.id)


