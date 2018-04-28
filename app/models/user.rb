class User < ApplicationRecord
  has_many :VideoUsage
  has_many :videos, :through => :VideoUsage

  # def createTime
  #   binding.pry
  # end
end
