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
    column "Remaining Amount (%)" do |issuance|
      "#{issuance.remaining_amount_percent}% or #{issuance.remaining_amount} / #{issuance.max_amount}"
    end

    column :investable?
    actions
  end

  show do
    attributes_table do
      row :name
      row :max_amount
      row :start_date
      row :end_date
      row :remaining_amount
      row :remaining_amount_percent
      row :investable?
      row :created_at
      row :updated_at
      row :investments do |issuance|
        columns do
          column do
            table_for issuance.investments do
              column :user
              column :amount
              column :created_at
            end
          end
        end
      end
    end
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
