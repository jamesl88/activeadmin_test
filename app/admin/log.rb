ActiveAdmin.register Log do
  index do
    column :procedure
    column :date
    column :complications
    column :teaching
    column :reflection
    default_actions
  end
  

end
