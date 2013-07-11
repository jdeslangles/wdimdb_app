class Movie < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :actors
  attr_accessible :actor_id, :category_id, :movie_image, :title, :year, :category_name, :actor_ids, :description
  validates :title, presence: true, uniqueness: true
  validate :actors, :has_actors, on: :create, on: :update

  mount_uploader :movie_image, MovieImageUploader

  def has_actors
    if actors.size == 0
      errors.add(:actors, "You forgot to list actors to this movie")
    end
  end
end
