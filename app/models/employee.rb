class Employee < ApplicationRecord
    belongs_to :dog
    #validates :title, uniqueness: true
end
