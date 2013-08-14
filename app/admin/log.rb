ActiveAdmin.register Log do
  index do
    column :procedure
    column :date
    column "Any complications?", :complications
    column :teaching
    column :reflection
    default_actions
  end
  

end
