# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

students = DBC::User.all

students.each do |student|

   User.create!(username: student.name, email: student.email, password: "password", password_confirmation: "password", cohort_id: student.cohort_id)
end
