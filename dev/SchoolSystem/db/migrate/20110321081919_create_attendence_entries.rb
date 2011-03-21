class CreateAttendenceEntries < ActiveRecord::Migration
  def self.up
    create_table :attendence_entries do |t|
      t.string :student
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :present

      t.timestamps
    end
  end

  def self.down
    drop_table :attendence_entries
  end
end
