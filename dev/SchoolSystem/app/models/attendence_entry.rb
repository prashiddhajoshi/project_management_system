class AttendenceEntry < ActiveRecord::Base
  validates :student, :presence => true
  validates :year, :presence => true, :numericality => true
  validates :month, :presence => true, :numericality => true
  validates :day, :presence => true, :numericality => true
  validates :present, :presence => true, :numericality => true

  validates_each :student do |model, attr, value|
    model.errors.add(attr, 'must start with upper case') if value =~ /\A[a-z]/
  end
end
