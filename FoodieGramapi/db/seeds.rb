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

user1 = User.create(username: "esther", bio:"I could eat taco bell and sushi for the rest of my life", profilepic:"https://i.imgur.com/wJdK3J1.jpg")
user2 = User.create(username: "danny", bio:"i have really strong teeth", profilepic:"https://media.discordapp.net/attachments/299682345014001675/738770711082041354/image0.jpg")
user3 = User.create(username: "winniethepooh", bio:"i love hunny", profilepic:"https://cdn141.picsart.com/316454842187201.jpg?type=webp&to=crop&r=256")

post1 = Post.create(caption: "Sponsor me Chipotle", image_url: "https://pbs.twimg.com/profile_images/637328898531926018/pJNVtD8w_400x400.jpg", user_id: user1.id)
post2 = Post.create(caption: "I could go for another slice", image_url: "https://www.readyseteat.com/sites/g/files/qyyrlu501/files/uploadedImages/img_6941_6018.JPEG", user_id: user2.id)
post3 = Post.create(caption: "#teamcookiedough", image_url: "https://bigoven-res.cloudinary.com/image/upload/t_recipe-256/chocolate-chip-cookie-dough-ice-cream-2386254.jpg", user_id: user2.id)
post4 = Post.create(caption: "ramen for days", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSdFTwW5ctNuzlcc4YbPmrhs6XjfziACf96Gw&usqp=CAU", user_id: user1.id)
post5 = Post.create(caption: "been working out at the gym, check out my mussels", image_url: "https://i.pinimg.com/474x/84/08/db/8408dbacbe73c070642465cf92b7f8d2.jpg", user_id: user2.id)
post6 = Post.create(caption: "a beauty", image_url: "https://redirect.bigoven.com/pics/rs/256/koreanbbqkalbi-ee4064.jpg", user_id: user1.id)
post7 = Post.create(caption: "hunny ALL DAY EVERYDAY", image_url: "https://i.pinimg.com/originals/ad/2e/10/ad2e1017a6d63615dcad8f5310ab41c4.png", user_id: user3.id)

comment1 = Comment.create(text: "I could eat another burrito from Chipotle again...", user_id: user1.id, post_id: post1.id)
comment2 = Comment.create(text: "yooo give me a slice of that pizza!", user_id: user2.id, post_id: post2.id)
comment3 = Comment.create(text: "pizza is so beautiful", user_id: user1.id, post_id: post2.id)

like1 = Like.create(user_id: user2.id, post_id: post1.id)
