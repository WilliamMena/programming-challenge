class VideoUsage < ApplicationRecord
  belongs_to :video
  belongs_to :user




  # after an association is created, I want to run this method so we can have a randomly generated time watched
  def createTime()
    video_length = self.video.length

    length_in_sec = video_length.sec
    length_in_sec += (video_length.min * 60)
    length_in_sec += (video_length.hour * 3600)

    ##
    # Now that I have the length of the video in seconds. I now need to randomly create a number less than that time


    #The idea behind this is to always have a watch time longer than a 10th of the video
    min = length_in_sec/10
    #Here I'm divind my time by 3 for the sole purpose of being able to generate a truly random time that can POSSIBLY reach the true ending of the video. My prediction is that by the last 30 percent you'll see a bigger decrease in time.
    max = length_in_sec/3
    self.watched = Time.at(rand(min..max*rand(2..3))).utc

  end
end
