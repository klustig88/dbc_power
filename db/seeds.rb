# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

students = DBC::User.all

students.each do |student|
   Student.create!( uid: student.id,
                    name: student.name,
                    email: student.email,
                    bio: student.bio,
                    cohort_id: student.cohort_id,
                    cohort_name: DBC::Cohort.find(student.cohort_id).name,
                    github: student.profile[:github],
                    quora: student.profile[:quora],
                    twitter: student.profile[:twitter],
                    facebook: student.profile[:facebook],
                    linked_in: student.profile[:linked_in],
                    about: student.profile[:about]
                  )
end
