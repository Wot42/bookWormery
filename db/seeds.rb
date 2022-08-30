# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(user_name: "Darius", profile_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Furmanov_by_malutin.jpg/511px-Furmanov_by_malutin.jpg")
User.create(user_name: "Izzi", profile_picture: "https://www.artmajeur.com/medias/home/a/n/andreagart/artwork/15089879_magis-art-dama-v-modrom-klobuku.jpg?v=1647438206")
User.create(user_name: "Alice", profile_picture: "http://www.passportmagazine.ru/workdir/photos/748_1.jpg")

Book.create(title: "Thus Spoke Zarathustra", price: 1.99, book_pic: "https://images-na.ssl-images-amazon.com/images/I/91BVK99+oZL.jpg", condition: "Used - Good", user_id: 1)
Book.create(title: "Writing and Difference", price: 3.99, book_pic: "https://images-na.ssl-images-amazon.com/images/I/519dAn-qVKL.jpg", condition: "Used - Acceptable", user_id: 2)
Book.create(title: "The Outsider", price: 2.99, book_pic: "https://images-na.ssl-images-amazon.com/images/I/71HhB-JT8xL.jpg", condition: "New", user_id: 3)
Book.create(title: "Either/Or", price: 1.99, book_pic: "https://images-na.ssl-images-amazon.com/images/I/41QNNANE2PL._SX307_BO1,204,203,200_.jpg", condition: "Used - Very Good", user_id: 2)
