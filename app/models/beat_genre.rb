class BeatGenre < ActiveRecord::Base

    belongs_to :genre
    belongs_to :beat

end