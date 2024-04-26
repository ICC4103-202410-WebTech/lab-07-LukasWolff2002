# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Post.destroy_all
Tag.destroy_all



User.create!(
name: "John Doe",
email: "Jdoeo@gmail.com",
password: "12345678"
)
User.create!(
name: "juan pErez",
email: "jperez@gmail.com",
password: "22345678"
)
User.create!(
name: "pepe gonzales",
email: "pgonzales@gmail.com",
password: "32345678"
)
User.create!(
name: "Juan Rodriguez",
email: "jrodriguez@gmail.com",
password: "42345678"
)
User.create!(
name: "Lukas Wolff",
email: "lwolff@gmail.com",
password: "52345678"
)


# Crear etiquetas
tags = ["Tag 1", "Tag 2", "Tag 3", "Tag 4", "Tag 5"]
tags.each do |tag_name|
  Tag.create!(name: tag_name)
end

user = User.find_by(name: "John Doe")
post = user.posts.create!(
    title: "Post 1",
    content: "Contenido post 1",
    published_at: Time.now - rand(1..30).days,
    answers_count: rand(0..10),
    likes_count: rand(0..20)
)
# Asignar etiquetas aleatorias a la publicación
post.tags << Tag.all.sample(rand(1..3))

user = User.find_by(name: "John Doe")
post = user.posts.create!(
    title: "Post 2",
    content: "Contenido post 2",
    published_at: Time.now - rand(1..30).days,
    answers_count: rand(0..10),
    likes_count: rand(0..20)
)
# Asignar etiquetas aleatorias a la publicación
post.tags << Tag.all.sample(rand(1..3))

user = User.find_by(name: "Juan Perez")
    post = user.posts.create!(
        title: "Post 3",
        content: "Contenido post 3",
        published_at: Time.now - rand(1..30).days,
        answers_count: rand(0..10),
        likes_count: rand(0..20)
    )
# Asignar etiquetas aleatorias a la publicación
post.tags << Tag.all.sample(rand(1..3))

user = User.find_by(name: "Juan Perez")
post = user.posts.create!(
    title: "Post 4",
    content: "Contenido post 4",
    published_at: Time.now - rand(1..30).days,
    answers_count: rand(0..10),
    likes_count: rand(0..20)
)
# Asignar etiquetas aleatorias a la publicación
post.tags << Tag.all.sample(rand(1..3))

user = User.find_by(name: "Pepe Gonzales")
post = user.posts.create!(
    title: "Post 5",
    content: "Contenido post 5",
    published_at: Time.now - rand(1..30).days,
    answers_count: rand(0..10),
    likes_count: rand(0..20)
)
# Asignar etiquetas aleatorias a la publicación
post.tags << Tag.all.sample(rand(1..3))

user = User.find_by(name: "Pepe Gonzales")
post = user.posts.create!(
    title: "Post 6",
    content: "Contenido post 6",
    published_at: Time.now - rand(1..30).days,
    answers_count: rand(0..10),
    likes_count: rand(0..20)
)
# Asignar etiquetas aleatorias a la publicación
post.tags << Tag.all.sample(rand(1..3))

user = User.find_by(name: "Juan Rodriguez")
post = user.posts.create!(
    title: "Post 7",
    content: "Contenido post 7",
    published_at: Time.now - rand(1..30).days,
    answers_count: rand(0..10),
    likes_count: rand(0..20)
)
# Asignar etiquetas aleatorias a la publicación
post.tags << Tag.all.sample(rand(1..3))

user = User.find_by(name: "Juan Rodriguez")
post = user.posts.create!(
    title: "Post 8",
    content: "Contenido post 8",
    published_at: Time.now - rand(1..30).days,
    answers_count: rand(0..10),
    likes_count: rand(0..20)
)
# Asignar etiquetas aleatorias a la publicación
post.tags << Tag.all.sample(rand(1..3))

user = User.find_by(name: "Lukas Wolff")
post = user.posts.create!(
    title: "Post 9",
    content: "Contenido post 9",
    published_at: Time.now - rand(1..30).days,
    answers_count: rand(0..10),
    likes_count: rand(0..20)
)
# Asignar etiquetas aleatorias a la publicación
post.tags << Tag.all.sample(rand(1..3))

user = User.find_by(name: "Lukas Wolff")
post = user.posts.create!(
    title: "Post 10",
    content: "Contenido post 10",
    published_at: Time.now - rand(1..30).days,
    answers_count: rand(0..10),
    likes_count: rand(0..20)
)
# Asignar etiquetas aleatorias a la publicación
post.tags << Tag.all.sample(rand(1..3))
