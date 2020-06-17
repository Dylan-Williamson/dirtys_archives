class Beat < ActiveRecord::Base

    belongs_to :user
    has_one :beat_genre
    # has_many :genres, through: :beat_genres

    def to_s
        "#{self.title} (prod. #{self.user.username})"
    end
end