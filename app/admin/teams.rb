ActiveAdmin.register Team do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  #
  permit_params :team_name, :coach

  filter :team_name
  filter :coach
  # filter :created_at
  # filter :updated_at

  actions :all, except: [:destroy]

  # or
  #
  # permit_params do
    # permitted = [:team_name, :coach]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
