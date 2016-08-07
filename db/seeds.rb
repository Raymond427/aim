# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chapters = Chapter.create([
  {
  school: 'The University of North Carolina at Charlotte',
  acronym: 'UNCC',
  logo: 'uncc.gif',
  email: 'aimunccsecretary@gmail.com',
  donation_url: 'paypal.com'
  }
])

members = Member.create([
  {
    first_name: 'Raymond',
    last_name: 'Ferrell',
    email: 'rferrel427@gmail.com',
    password: ENV['admin_password'],
    role: 'admin',
    linkedinurl: 'https://www.linkedin.com/in/raymondferrell',
    major: 'Computer Science',
    graduation_date: 'December 2016',
    is_executive: true,
    executive_position: 'President',
    chapter: chapters.first
  }
])
