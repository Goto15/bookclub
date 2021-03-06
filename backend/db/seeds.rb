# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ----- Club ----- #
  club = Club.create(name: 'Franklin Ladies')

# ----- Member ----- #
  member = Member.create(name: "Annette Sullivan")

# ----- Clubmember ----- #
  Clubmember.create(member_id: member.id, club_id: club.id)

# ----- Books ----- #
  Book.create(title: "Pigness of Pig", author: "Joel Salatin", member_id: member.id)

# ----- Meetings ----- #
  Meeting.create(name: "Monthly Meeting", club_id: club.id)