class Beat < ActiveRecord::Base

    belongs_to :user
    has_one :genre

    def to_s
        "#{self.title} (prod. #{self.user.username})"
    end

end