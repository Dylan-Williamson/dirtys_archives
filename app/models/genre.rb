class Genre < ActiveRecord::Base
    
    has_many :beats, through: :beat_genres
    has_many :users, through: :beats

end