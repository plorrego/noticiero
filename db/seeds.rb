# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

noticias = []
(50..100).each do |i|
	noticia = ClassNews.create(
	title: "Noticia numero #{i}",
	drop: "Esta es la #{i} noticia de la base de datos.",
	body: "Este es el cuerpo de la #{i} noticia.")
	noticias << noticia
end
	
