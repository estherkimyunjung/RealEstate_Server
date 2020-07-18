# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create(username: 'est123', password: 'es12345', firstname:'Esther', lastname:'Kim', email: 'esther@gmail.com', role: 'Shopper', avatar: 'https://i.pinimg.com/564x/30/24/f8/3024f8d283b734bd6b7e4fc5531fe2e9.jpg')
u2 = User.create(username: 'jam123', password: 'ja12345', firstname:'James', lastname:'Kim', email: 'james@gmail.com', role: 'Shopper', avatar: 'https://i.pinimg.com/564x/4a/1f/76/4a1f76ca52bcb90ab2cb3343be8bb2ba.jpg')
u3 = User.create(username: 'yun123', password: 'yu12345', firstname:'Yunjung', lastname:'Kim', email: 'kyjekffo@gmail.com', role: 'Agent', avatar: 'https://i.pinimg.com/564x/1a/69/9a/1a699af5ba1c67fd07711a66bbe733eb.jpg')
