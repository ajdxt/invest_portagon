ActiveAdmin.register User do
  config.filters = false
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :email
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    id_column
    column :name
    column :email
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
    end
    f.actions
  end
end
