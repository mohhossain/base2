# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all 
Question.destroy_all
User.create!([
  { id: 1, username: 'johndoe', name: 'John Doe', email: 'johndoe@example.com', password: '123Abcd.' },
  { id: 2, username: 'janedoe', name: 'Jane Doe', email: 'janedoe@example.com', password: '123Abcd.' },
  { id: 3, username: 'jakejake', name: 'Jake', email: 'jake@example.com', password: '123Abcd.' }
])

puts "seeding users..."

Question.create([
  { id: 1, title: 'How do I program in Ruby?', content: 'I am new to programming and want to learn Ruby. Can anyone provide some resources or tips?', user_id: 1 },
  { id: 2, title: 'What is the best way to debug a Rails application?', content: 'I am having trouble debugging my Rails application. Can anyone recommend some tools or strategies?', user_id: 2 },
  { id: 3, title: 'How can I optimize the performance of my PostgreSQL database?', content: 'I am noticing slow performance on my PostgreSQL database. Can anyone recommend some optimization techniques?', user_id: 3 }
])

puts "seeding questions..."

Answer.create([
  { id: 1, content: 'You can check out the Ruby Programming Language documentation and the Rails Tutorial book', user_id: 2, question_id: 1 },
  { id: 2, content: 'You can use the Rails debugger or byebug gem, also you can use loggers and the Rails performance tool', user_id: 3, question_id: 2 },
  { id: 3, content: 'You can use the pgAdmin tool, also you can use the explain command and check for slow queries', user_id: 1, question_id: 3 }
])

puts "Seeding answers..."

Reaction.create([
  { id: 1, emoji: ':+1:' },
  { id: 2, emoji: ':-1:' },
  { id: 3, emoji: ':smile:' }
])

puts "Seeding reactions..."

ReactionQuestion.create([
  { id: 1, question_id: 1, user_id: 1, reaction_id: 1 },
  { id: 2, question_id: 2, user_id: 2, reaction_id: 2 },
  { id: 3, question_id: 3, user_id: 3, reaction_id: 3 },
])

ReactionAnswer.create([
  { id: 1, answer_id: 1, user_id: 1, reaction_id: 1 },
  { id: 2, answer_id: 2, user_id: 2, reaction_id: 2 },
  { id: 3, answer_id: 3, user_id: 3, reaction_id: 3 },
])

Tag.create([
  { id: 1, name: 'ruby' },
  { id: 2, name: 'rails' },
  { id: 3, name: 'debugging' },
  { id: 4, name: 'performance' },
  { id: 5, name: 'postgresql' }
])

QuestionTag.create([
  { id: 1, question_id: 1, tag_id: 1 },
  { id: 2, question_id: 1, tag_id: 2 },
  { id: 3, question_id: 2, tag_id: 2 },
  { id: 4, question_id: 2, tag_id: 3 },
  { id: 5, question_id: 3, tag_id: 4 },
  { id: 6, question_id: 3, tag_id: 5 }
])


# db/seeds.rb

# Technical skills
skills = [
  { name: "Ruby" },
  { name: "Rails" },
  { name: "JavaScript" },
  { name: "React" },
  { name: "PostgreSQL" }
]

Skill.create!(skills)

# User skills
user_skills = [
  { user_id: 1, skill_id: 1 },
  { user_id: 1, skill_id: 2 },
  { user_id: 2, skill_id: 2 },
  { user_id: 2, skill_id: 3 },
  { user_id: 2, skill_id: 4 },
  { user_id: 3, skill_id: 5 }
]

UserSkill.create!(user_skills)
