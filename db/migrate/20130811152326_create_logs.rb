class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|

      t.integer :user_id
      t.date :date
      t.string :procedure
      t.string :complications
      t.string :teaching

      t.timestamps
    end
  end
end
