# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create some bookstores
bookstore_1 = Store.create({
    name: "Bookstore 1"
})

bookstore_2 = Store.create({
    name: "Bookstore 2"
})

p "== Created Stores =="

# Attach books to pre-existing bookstores

bookstore_1.books.create([
    {
        name: "The Catcher in the Rye",
        stock: 1
    },
    {
        name: "The Great Gatsby",
        stock: 1
    },
    {
        name: "To Kill a Mockingbird",
        stock: 1
    }
])

bookstore_2.books.create([
    {
        name: "Catch-22",
        stock: 1
    },
    {
        name: "Lord of the Flies",
        stock: 1
    }
])

p "== Created Books and attached to Store =="