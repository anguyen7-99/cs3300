class Project < ApplicationRecord
      extend FriendlyId
      friendly_id :title, use: :slugged

      def should_generate_new_friendly_id?
          title_changed?
      end
      def display_day_published
        "#{created_at.strftime('%-b %-d, %Y')}"
      end
      
    validates_presence_of :title, :description
end