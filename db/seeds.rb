# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create([{ title: 'Healthy eating for 2 weeks', status: "published" }, { title: 'Trip to Paris', status: "unpublished" }, { title: 'My best pecan sweet potato bake', status: "unpublished" }])

Bit.create(content: 'Eating avocado smoothie on day 1', post_id: 4)
