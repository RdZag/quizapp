# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Czyszczenie tabel
Question.destroy_all
Answer.destroy_all

# Tworzenie pytań i odpowiedzi
question1 = Question.create(content: "Jakie jest główne miasto Francji?")
Answer.create(content: "Madryt", correct: false, question: question1)
Answer.create(content: "Berlin", correct: false, question: question1)
Answer.create(content: "Paryż", correct: true, question: question1)
Answer.create(content: "Londyn", correct: false, question: question1)


# Dodaj więcej pytań i odpowiedzi według potrzeb

puts "Utworzono pytania i odpowiedzi."

