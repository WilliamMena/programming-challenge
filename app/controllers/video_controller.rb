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
    @lineSize = {
      :height => 500,
      :width => 500
    }
    @lineData = [
        {
          value: 300,
          color:"#F7464A",
          highlight: "#FF5A5E",
          label: "Red"
        },
        {
          value: 50,
          color: "#46BFBD",
          highlight: "#5AD3D1",
          label: "Green"
        },
        {
          value: 100,
          color: "#FDB45C",
          highlight: "#FFC870",
          label: "Yellow"
        },
        {
          value: 40,
          color: "#949FB1",
          highlight: "#A8B3C5",
          label: "Grey"
        },
        {
          value: 120,
          color: "#4D5360",
          highlight: "#616774",
          label: "Dark Grey"
        }

      ].to_json
  end
end


private

def video_params
  params.permit(:video_id)
end
