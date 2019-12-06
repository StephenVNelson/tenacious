ActiveAdmin.register Workout do

 permit_params :user_id, :client_id, :scheduled_date, :logged_date, :phase_number, :week_number, :day_number, :workout_focus, :sets_reps_array, :resistance_array, :set_duration_array, :set_work_rest_array
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
