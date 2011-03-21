class StudentProfile < ActiveRecord::Base
  validates :name, :presence => true
  validates :roll_number, :presence => true, :numericality => true
  validates :address, :presence => true
  validates :phone_number, :presence => true, :numericality => true

  validates_each :name do |model, attr, value|
    model.errors.add(attr, 'must start with upper case') if value =~ /\A[a-z]/
  end
end
