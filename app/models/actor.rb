class Actor < ActiveRecord::Base
  has_and_belongs_to_many :movies
  attr_accessible :actor_image, :bio, :movie_id, :name, :movie_ids


  validates :name, presence: true, uniqueness: true

  mount_uploader :actor_image, ActorImageUploader

end
