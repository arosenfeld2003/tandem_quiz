# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Original Seed file: ~db/seeds/Apprentice_TandemFor400_Data.json
# App is portable: we could always use a different seed file.

file = File.join(Rails.root, 'db', 'seeds', 'Apprentice_TandemFor400_Data.json')
db_seeds = JSON.parse(File.read(file))
db_seeds.each do |seed|
  current_question = Question.create(value: seed["question"])
  Answer.create(value: seed["correct"], correct: true, question_id: current_question.id)
  seed["incorrect"].each do |answer|
    Answer.create(value: answer, correct: false, question_id: current_question.id)
  end
end