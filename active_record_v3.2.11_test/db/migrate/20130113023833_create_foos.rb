class CreateFoos < ActiveRecord::Migration
  def change
    create_table :foos do |t|
      t.datetime :datetime_test

      t.timestamps
    end
  end
end
