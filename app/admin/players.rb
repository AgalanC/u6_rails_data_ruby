ActiveAdmin.register Player do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :jersey_number, :player_name, :team_id

  filter :jersey_number
  filter :player_name
  filter :team_id

  # actions :index

  # or
  #
  # permit_params do
  #   permitted = [:jersey_number, :player_name, :team_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
