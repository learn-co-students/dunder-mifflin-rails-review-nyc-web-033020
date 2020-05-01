class Employee < ApplicationRecord

  belongs_to :dog

  validates :alias, uniqueness: true
  validates :title, uniqueness: true

  def last_name_first_name
    self.last_name + ", " + self.first_name
  end

end
