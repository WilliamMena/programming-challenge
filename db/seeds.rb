# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



video = Video.new
video.video_id = 123456
# video.length = Time.new(1991, 11, 22, 0, 3, 12, '-00:00')
video.length = Time.at(192).utc
video.save

video.VideoUsage.create()
video.VideoUsage.last.user = (User.create(:name => "William", :age => 26))
video.VideoUsage.last.createTime
video.VideoUsage.last.save

video.VideoUsage.create()
video.VideoUsage.last.user = (User.create(:name => "Rocio", :age => 26))
video.VideoUsage.last.createTime
video.VideoUsage.last.save

video.VideoUsage.create()
video.VideoUsage.last.user = (User.create(:name => "Natasha", :age => 21))
video.VideoUsage.last.createTime
video.VideoUsage.last.save

video.VideoUsage.create()
video.VideoUsage.last.user = (User.create(:name => "Mike", :age => 27))
video.VideoUsage.last.createTime
video.VideoUsage.last.save

video.VideoUsage.create()
video.VideoUsage.last.user = (User.create(:name => "Teddy", :age => 28))
video.VideoUsage.last.createTime
video.VideoUsage.last.save

video.VideoUsage.create()
video.VideoUsage.last.user = (User.create(:name => "Tuto", :age => 25))
video.VideoUsage.last.createTime
video.VideoUsage.last.save

video.VideoUsage.create()
video.VideoUsage.last.user = (User.create(:name => "Jonathan", :age => 24))
video.VideoUsage.last.createTime
video.VideoUsage.last.save

video.VideoUsage.create()
video.VideoUsage.last.user = (User.create(:name => "Jennifer", :age => 24))
video.VideoUsage.last.createTime
video.VideoUsage.last.save

video.VideoUsage.create()
video.VideoUsage.last.user = (User.create(:name => "Erika", :age => 42))
video.VideoUsage.last.createTime
video.VideoUsage.last.save



# user = User.create(name: "William", age: 26)


# usage = VideoUsage.new
# usage.video = Video.first
# usage.user = User.first
# usage.createTime
# usage.save


# removing 24 hours time-2592000




#
# user = User.first
# usage = VideoUsage.first
# video = Video.first
