# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "clearing the DB"
Booking.destroy_all
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
  book1 = Book.create(title: "Thus Spoke Zarathustra", price: 1.99, genre: "Philosophy", book_pic: "https://images-na.ssl-images-amazon.com/images/I/91BVK99+oZL.jpg", comment: "It describes how the ancient Persian prophet Zarathustra descends from his solitude in the mountains to tell the world that God is dead and that Superman, the human embodiment of divinity, is his successor.", condition: "Used - Good", user_id: user1.id)
  book2 = Book.create(title: "Writing and Difference", price: 3.99, genre: "Philosophy", book_pic: "https://images-na.ssl-images-amazon.com/images/I/519dAn-qVKL.jpg", comment: "First published in 1967, Writing and Difference, a collection of Jacques Derrida's essays written between 1959 and 1966, has become a landmark of contemporary French thought. In it, we find Derrida at work on his systematic deconstruction of Western metaphysics.",condition: "Used - Acceptable", user_id: user2.id)
  book3 = Book.create(title: "The Outsider", price: 2.99, genre: "Philosophy", book_pic: "https://images-na.ssl-images-amazon.com/images/I/71HhB-JT8xL.jpg", comment: "'My mother died today. Or maybe yesterday, I don't know.' In The Outsider (1942), his classic existentialist novel, Camus explores the alienation of an individual who refuses to conform to social norms.", condition: "New", user_id: user1.id)
  book4 = Book.create(title: "Either/Or", price: 1.99, genre: "Philosophy", book_pic: "https://images-na.ssl-images-amazon.com/images/I/41QNNANE2PL._SX307_BO1,204,203,200_.jpg", comment: "A masterpiece of duality, Either/Or is a brilliant exploration of the conflict between the aesthetic and the ethical - meditating ironically and seductively upon Epicurean pleasures and eloquently expounding the noble virtues of a morally upstanding life.", condition: "Used - Very Good", user_id: user3.id)
  book5 = Book.create(title: "Simulacra and Simulation", genre: "Philosophy", price: 5.99, book_pic: "https://images-na.ssl-images-amazon.com/images/I/41+odtb-dML.jpg", comment: "Moving away from the Marxist/Freudian approaches that had concerned him earlier, Baudrillard developed in this book a theory of contemporary culture that relies on displacing economic notions of cultural production with ideas of cultural expenditure.", condition: "New", user_id: user2.id)
  book6 = Book.create(title: "On Human Nature", price: 1.99, genre: "Philosophy", book_pic: "https://images-na.ssl-images-amazon.com/images/I/41U5t9SfPmL._SX311_BO1,204,203,200_.jpg", comment: "In this short book, acclaimed writer and philosopher Roger Scruton presents an original and radical defence of human uniqueness. We are not only human animals; we are also persons, in essential relation with other persons, bound to them by obligations and rights.", condition: "Used - Very Good", user_id: user3.id)
  book7 = Book.create(title: "The Hitchhikers Guide to the Galaxy", genre: "Science Fiction", price: 0.99, book_pic: "https://api.time.com/wp-content/uploads/2014/10/hitchhiker-s-guide-douglas-adams-657242_451_700.jpg", comment: "Seconds before the Earth is demolished for a galactic freeway, Arthur Dent is saved by Ford Prefect, a researcher for the revised Guide. Together they stick out their thumbs to the stars and begin a wild journey through time and space.", condition: "Used - Good", user_id: user1.id)
  book8 = Book.create(title: "Summa Theologica", price: 2.49, genre: "Philosophy", book_pic: "https://kbimages1-a.akamaihd.net/dfb0be88-74d6-44d9-ae15-98eabdc82cf8/1200/1200/False/summa-theologica-29.jpg",comment: "The Summa Theologica was intended as a manual for beginners as a compilation of all of the main theological teachings of the time. It summarises the reasoning of all points of Christian theology, which before the Protestant Reformation subsisted solely in the Roman Catholic Church.",  condition: "Used - Poor", user_id: user2.id)
  book9 = Book.create(title: "From Bacteria to Bach and Back", price: 1.99, genre: "Philosophy", book_pic: "https://images-na.ssl-images-amazon.com/images/I/91qF5NhtomL.jpg",comment: "C. Dennett's brilliant answer, extending perspectives from his earlier work in surprising directions, exploring the deep interactions of evolution, brains, and human culture.", condition: "Used - Acceptable", user_id: user3.id)
  book10 = Book.create(title: "The Epic of Gilgamesh", price: 1.99, genre: "Classics", book_pic: "https://pictures.abebooks.com/isbn/9780141026282-uk.jpg", comment: "This is the story of Gilgamesh, King of Kings, who brought back knowledge from before the flood - who loved and lost his companion Enkidu and had to find out why we die.", condition: "Used - Excellent", user_id: user2.id)
  book11 = Book.create(title: "Gödel, Escher, Bach", price: 3.99, genre: "Philosophy", book_pic: "https://images-na.ssl-images-amazon.com/images/I/81FPDNQp85L.jpg", comment: "Douglas Hofstadter's book is concerned directly with the nature of “maps” or links between formal systems. However, according to Hofstadter, the formal system that underlies all mental activity transcends the system that supports it. If life can grow out of the formal chemical substrate of the cell, if consciousness can emerge out of a formal system of firing neurons, then so too will computers attain human intelligence.", condition: "Used - Excellent", user_id: user1.id)
  book12 = Book.create(title: "The Interpretation of Dreams", price: 3.49, genre: "Psychology", book_pic: "https://www.karnacbooks.com/Covers/9034.jpg", comment: "Freud's discovery that the dream is the means by which the unconscious can be explored is undoubtedly the most revolutionary step forward in the entire history of psychology. Dreams, according to his theory, represent the hidden fulfilment of our unconscious wishes.", condition: "Used - Good", user_id: user1.id)

puts "creating #{book1.title} "
puts "creating #{book2.title} "
puts "creating #{book3.title} "
puts "creating #{book4.title} "
puts "creating #{book5.title} "
puts "creating #{book6.title} "
puts "creating #{book7.title} "
puts "creating #{book8.title} "
puts "creating #{book9.title} "
puts "creating #{book10.title} "
puts "creating #{book11.title} "
puts "creating #{book12.title} "

puts "books created #{Book.all.length}"
