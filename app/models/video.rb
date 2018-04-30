class Video < ApplicationRecord
  has_many :videoUsage
  has_many :users, :through => :videoUsage
end
