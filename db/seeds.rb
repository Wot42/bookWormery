# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "clearing the DB"
Book.destroy_all
User.destroy_all
puts "DB clean"

puts "creating user"
 user1 = User.create(user_name: "Darius", profile_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Furmanov_by_malutin.jpg/511px-Furmanov_by_malutin.jpg", password: "123456", email: "test1@test.com")
 user2 = User.create(user_name: "Izzi", profile_picture: "https://www.artmajeur.com/medias/home/a/n/andreagart/artwork/15089879_magis-art-dama-v-modrom-klobuku.jpg?v=1647438206", password: "123456", email: "test2@test.com")
 user3 = User.create(user_name: "Alice", profile_picture: "http://www.passportmagazine.ru/workdir/photos/748_1.jpg", password: "123456", email: "test3@test.com")
 puts "creating #{user1.email} "
 puts "creating #{user2.email} "
 puts "creating #{user3.email} "

 puts "creating books"
book1 = Book.create(title: "Thus Spoke Zarathustra", price: 1.99, book_pic: "https://images-na.ssl-images-amazon.com/images/I/91BVK99+oZL.jpg", condition: "Used - Good", user_id: user1.id)
book2 = Book.create(title: "Writing and Difference", price: 3.99, book_pic: "https://images-na.ssl-images-amazon.com/images/I/519dAn-qVKL.jpg", condition: "Used - Acceptable", user_id: user2.id)
book3 = Book.create(title: "The Outsider", price: 2.99, book_pic: "https://images-na.ssl-images-amazon.com/images/I/71HhB-JT8xL.jpg", condition: "New", user_id: user1.id)
book4 = Book.create(title: "Either/Or", price: 1.99, book_pic: "https://images-na.ssl-images-amazon.com/images/I/41QNNANE2PL._SX307_BO1,204,203,200_.jpg", condition: "Used - Very Good", user_id: user3.id)

puts "creating #{book1.title} "
puts "creating #{book2.title} "
puts "creating #{book3.title} "
puts "creating #{book4.title} "


puts "books created #{Book.all.length}"
