class Beat < ActiveRecord::Base

    belongs_to :user
    has_one :genre
end