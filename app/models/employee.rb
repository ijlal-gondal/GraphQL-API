class Employee < ApplicationRecord
    belongs_to :user
    has_many :interventions
    def first_name
        firstName
    end
    def last_name
        lastName
    end
end
