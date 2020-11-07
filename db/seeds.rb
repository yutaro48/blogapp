# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

aguero = User.create!(email: 'aguero@email.com', password: 'aaaaaa')
debruyne = User.create!(email: 'debruyne@email.com', password: 'aaaaaa')

5.times do
    aguero.articles.create!(
        title: Faker::Lorem.sentence(word_count: 1),
        content: Faker::Lorem.sentence(word_count: 100)
    )
end

5.times do
    debruyne.articles.create!(
        title: Faker::Lorem.sentence(word_count: 1),
        content: Faker::Lorem.sentence(word_count: 100)
    )
end