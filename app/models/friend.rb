class Friend < ApplicationRecord
    belongs_to :user
    
    def self.search(search)
        if search
            friend = Friend.find_by(name: search)
            if friend
             self.where(friend_id: friend)
            else
               Friend.all
            end
        else
            Friend.all
        end
    end   
end

