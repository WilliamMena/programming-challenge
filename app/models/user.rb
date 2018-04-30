class User < ApplicationRecord
  has_many :videoUsage
  has_many :videos, :through => :videoUsage

end
