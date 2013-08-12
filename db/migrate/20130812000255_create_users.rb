class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :designation
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
