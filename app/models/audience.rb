class Audience < ApplicationRecord
    validates :email_marketing, :user_id, presence: true
    belongs_to :user
end
