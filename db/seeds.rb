# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.find_or_create_by(email: 'admin@admin.com', password: '12345678')
100.times.each{|i| Article.find_or_create_by(title:"标题#{i}", content: "内容#{i}") }
