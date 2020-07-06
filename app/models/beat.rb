class Beat < ActiveRecord::Base

    belongs_to :user
    validates :title, uniqueness: true, presence: true
    def to_s
        "#{self.title} (prod. #{self.user.username})"
    end

end