class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|

      t.date :date
      t.string :procedure
      t.string :complications
      t.string :teaching

      t.timestamps
    end
  end
end
