class Genre < ActiveRecord::Base

    has_many :beat_genres
    has_many :beats, through: :song_genres
    has_many :users, through: :beats