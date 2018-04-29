class VideoController < ApplicationController

  def new
    @video = Video.new
  end

  def create
    random_time = Random.rand(100..600)
    @video = Video.new(video_params)
    @video.length = Time.at(random_time).utc

    if @video.save


      # This will pick a random number deciding how many people will be created or how many views the video will get.
      x = Random.rand(1..10)
      while x >= 0
        @video.VideoUsage.create()
        @video.VideoUsage.last.user = (User.create(:name => Faker::Name.first_name, :age => Random.rand(18..60)))
        @video.VideoUsage.last.createTime
        @video.VideoUsage.last.save
        x -= 1
      end



      redirect_to video_path(@video)
    else
      redirect_to new_video_path
      flash.alert = @list.errors.full_messages[0]
    end


  end

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
    length = @video.length.hour * 3600
    length += @video.length.min * 60
    length += @video.length.sec

    @data = []
    @video.VideoUsage.each do |video|
      ## This calculates the amount of time in seconds, each person watched, so we can populate the line graph.
      seconds = video.watched.hour * 3600
      seconds += video.watched.min * 60
      seconds += video.watched.sec

      ## Seconds Watched
      ## this would show how much time a user spent watching the video, but the chart doesn't look like an audience retention graph
      # @data << [video.user.name, seconds]

      ## Percentage Watched
      ## This will show the same chart as Seconds Watched but with percentages
      # @data << [video.user.name, (seconds.to_f / length.to_f) * 100.0]

      ## Length - Seconds
      ## This will show the amount of seconds left in the video. So if a user saw 45 out of 50 seconds, the graph will show 5 seconds remaining. More accurate to audience retention
      # @data << [video.user.name, length - seconds]

      ## Percentage Left
      ## Which is closer to the audience retention look that we want
      @data << [video.user.name, (100 - (seconds.to_f / length.to_f) * 100.0).to_i]
    end

    ## Seconds Watched & Percentage Watched
    # @data.sort! {|x,y| x[1] <=> y[1]}

    ## Length - Seconds & Percentage Left
    @data.sort! {|x,y| y[1] <=> x[1]}



  end
end


private

def video_params
  params.permit(:video_id)
end
