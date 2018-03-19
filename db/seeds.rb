# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class_news1 = ClassNews.create(
	title: "Noticia numero 1",
	drop: "Esta es la primera noticia de la base de datos.",
	body: "Este es el cuerpo de la primera noticia.")

coment1 = Coment.create(
	name: "Parron",
	content: "Este es el contenido del primer comentario.",
	class_news_id: class_news1.id)
