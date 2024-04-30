ActiveAdmin.register Investment do
  config.filters = false
  permit_params :issuance_id, :user_id, :amount

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :issuance_id, :user_id, :amount
  #
  # or
  #
  # permit_params do
  #   permitted = [:issuance_id, :user_id, :amount]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    id_column
    column :issuance
    column :user
    column :amount
    actions
  end

  form do |f|
    f.inputs do
      f.input :issuance
      f.input :user
      f.input :amount
    end
    f.actions
  end
end
