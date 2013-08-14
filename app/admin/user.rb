ActiveAdmin.register User do
 index do
    column :first_name
    column :last_name
    column :email
    column :designation
    column :start_date
    column :end_date
    default_actions
  end
end
