class VideoController < ApplicationController

  def new
    @video = Video.new
  end

  def create
    binding.pry
    random_time = Random.rand(100..600)
    @video = Video.new(video_params)
    @video.length = Time.at(random_time).utc
    @video.VideoUsage.create()


    # pick a random number for number of views on the specific video
    x = Random.rand(1..10)
    while x >= 0
      @video.VideoUsage.last.user = (User.create(:name => "William", :age => Random.rand(18..60)))
      @video.VideoUsage.last.createTime
      @video.VideoUsage.last.save
      x -= 1
    end



    redirect_to video_path(@video)
  end

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end
end


private

  def video_params
    params.permit(:video_id)
  end
