class Dog < ApplicationRecord
    has_many :employees 

    def self.dogs_by_num
        Employee.all.map do | person|
            person.dog
        end.sort.uniq 
    end 

    def find_my_owner
        Employee.all.select do |person|
            person.dog_id == self.id
        end  
    end 
end
