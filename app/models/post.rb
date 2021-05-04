class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged
    
    def should_generate_new_friendly_id?
        titel_changed?
    end
end