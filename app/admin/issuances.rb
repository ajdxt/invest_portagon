ActiveAdmin.register Issuance do
  config.filters = false

  permit_params :name, :max_amount, :start_date, :end_date

  index do
    selectable_column
    id_column
    column :name
    column :max_amount
    column :start_date
    column :end_date
    column "Remaining Amount (%)", :remaining_amount_percentage
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :max_amount
      f.input :start_date
      f.input :end_date
    end
    f.actions
  end
end
