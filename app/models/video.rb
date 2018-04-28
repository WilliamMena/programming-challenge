class Video < ApplicationRecord
  has_many :VideoUsage
  has_many :users, :through => :VideoUsage
end
