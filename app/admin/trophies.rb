ActiveAdmin.register Trophy do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :year, :trophy_name

  filter :trophy_name
  filter :year
  #
  # or
  #
  # permit_params do
  #   permitted = [:year, :trophy_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
