# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



video = Video.new
video.video_id = 123456
video.length = Time.new(1991, 11, 22, 0, 3, 12, '-04:00')
video.save

User.create(name: "William", age: 26)


usage = VideoUsage.new
usage.video = Video.first
usage.user = User.first


# video.VideoUsage = VideoUsage.new



# video.users=User.create(name: "William", Age: 26)
