ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :email, :admin, :username, :name

  form do |f|
    f.semantic_errors 
    f.inputs do
      f.input :username
      f.input :name
      f.input :email
      f.input :admin
    end
    f.actions
  end

  index do
    id_column
    column :username
    column :name
    column :email
    column :admin
    actions
  end
  
end
