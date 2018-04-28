class Video < ApplicationRecord
  has_many :users, through: :VideoUsage
end
