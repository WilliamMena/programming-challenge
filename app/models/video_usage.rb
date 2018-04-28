class VideoUsage < ApplicationRecord
  belongs_to :video
  belongs_to :users
end
