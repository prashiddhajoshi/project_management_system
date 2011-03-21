class CreateStudentProfiles < ActiveRecord::Migration
  def self.up
    create_table :student_profiles do |t|
      t.string :name
      t.integer :roll_number
      t.string :address
      t.integer :phone_number

      t.timestamps
    end
  end

  def self.down
    drop_table :student_profiles
  end
end
