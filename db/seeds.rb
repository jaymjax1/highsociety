# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
usertest1 = User.new(username: 'jaymjax', password: 'test12345', email: 'jaymjax@mygroup.com', first_name: 'Justin', last_name: 'Jackson', street: '123 Memphis Ln', city: 'Memphis', state: 'TN', zip_code: 12345, about_me: 'Born and raised in Memphis, TN.', profile_image: 'test1.jpg', background_image: 'test1.png')
usertest2 = User.new(username: 'jmjckson', password: 'test12345', email: 'jmjckson@mygroup.com', first_name: 'Jay', last_name: 'Jackson', street: '456 Memphis Ave', city: 'Memphis', state: 'TN', zip_code: 54321, about_me: 'Loving Memphis', profile_image: 'test2.jpg', background_image: 'test2.png')

grouptest1 = Group.new(name: 'Ruby Lovers', description: 'This group is dedicated to Ruby lovers', location: 'gtest1', owner: 'gtest1', background_image: 'background_1.jpg')
grouptest2 = Group.new(name: 'Python Power', description: 'Python is the best, join us to learn why', location: 'gtest2', owner: 'gtest2', background_image: 'gtest2.jpg')
grouptest3 = Group.new(name: 'HTML Highway', description: 'Because markup is necessary', location: 'gtest3', owner: 'gtest3', background_image: 'gtest3.jpg')
grouptest4 = Group.new(name: 'JavaScript Creatives', description: 'We are the future', location: 'gtest4', owner: 'gtest4', background_image: 'gtest4.jpg')

post1 = Post.new(title: 'Ruby', description: 'Hello everyone, Just want to inform you that we will have a rails hack session tommorow night in the university center. Make sure you bring your laptops, ideas, and get ready to have fun! Food and drinks will be provided. See you! ')
post2 = Post.new(title: 'Python', description: 'Python is a pretty good language imo...')
post3 = Post.new(title: 'HTML', description: 'I just love templates!')
post4 = Post.new(title: 'JavaScript', description: 'Bring on the animation!')

usertest1.groups << grouptest1
usertest1.groups << grouptest2
usertest1.groups << grouptest3
usertest1.groups << grouptest4

usertest1.posts << post1
usertest1.posts << post2
usertest1.posts << post3
usertest1.posts << post4

grouptest1.posts << post1
grouptest2.posts << post2
grouptest3.posts << post3
grouptest4.posts << post4

#grouptest1.users << usertest1
#grouptest2.users << usertest2
#grouptest1.users << usertest2
#grouptest2.users << usertest1

usertest1.save!
usertest2.save!
grouptest1.save!
grouptest2.save!
grouptest3.save!
grouptest4.save!
post1.save!
post2.save!
post3.save!
post4.save!

