class VideoController < ApplicationController

  def new
    @video = Video.new
  end

  def create
    random_time = Random.rand(100..600)
    @video = Video.new(video_params)
    @video.length = Time.at(random_time).utc

    if @video.save


      # pick a random number for number of views on the specific video
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

    @data = []
    @video.VideoUsage.each do |video|
      seconds = video.watched.hour * 3600
      seconds += video.watched.min * 60
      seconds += video.watched.sec

      @data << [video.user.name, seconds]
    end
    @data.sort! {|x,y| y[1] <=> x[1]}
  end
end


private

def video_params
  params.permit(:video_id)
end
