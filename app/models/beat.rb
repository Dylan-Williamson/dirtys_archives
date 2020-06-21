class Beat < ActiveRecord::Base

    belongs_to :user

    def to_s
        "#{self.title} (prod. #{self.user.username})"
    end

end