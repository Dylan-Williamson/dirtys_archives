class Beat < ActiveRecord::Base

    belongs_to :user
    has_many :beat_genres
    has_many :genres, through: :beat_genres

    # def to_s
    #     "#{self.title} (prod. #{self.user.username})"
    # end
end