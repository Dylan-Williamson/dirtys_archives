class Genre < ActiveRecord::Base

    has_many :beats
    has_many :users, through: :beats