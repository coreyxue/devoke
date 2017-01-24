class Changelog < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  has_many :checkins
end
