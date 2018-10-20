class Newsletter < ApplicationRecord
    has_many :newsletter_topics
    has_many :topics, through: :newsletter_topics
end
