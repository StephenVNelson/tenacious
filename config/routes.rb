Rails.application.routes.draw do
  # Routes for the Workout exercise resource:

  # CREATE
  get("/workout_exercises/new", { :controller => "workout_exercises", :action => "new_form" })
  post("/create_workout_exercise", { :controller => "workout_exercises", :action => "create_row" })

  # READ
  get("/workout_exercises", { :controller => "workout_exercises", :action => "index" })
  get("/workout_exercises/:id_to_display", { :controller => "workout_exercises", :action => "show" })

  # UPDATE
  get("/workout_exercises/:prefill_with_id/edit", { :controller => "workout_exercises", :action => "edit_form" })
  post("/update_workout_exercise/:id_to_modify", { :controller => "workout_exercises", :action => "update_row" })

  # DELETE
  get("/delete_workout_exercise/:id_to_remove", { :controller => "workout_exercises", :action => "destroy_row" })

  #------------------------------

  # Routes for the Workout resource:

  # CREATE
  get("/workouts/new", { :controller => "workouts", :action => "new_form" })
  post("/create_workout", { :controller => "workouts", :action => "create_row" })

  # READ
  get("/workouts", { :controller => "workouts", :action => "index" })
  get("/workouts/:id_to_display", { :controller => "workouts", :action => "show" })

  # UPDATE
  get("/workouts/:prefill_with_id/edit", { :controller => "workouts", :action => "edit_form" })
  post("/update_workout/:id_to_modify", { :controller => "workouts", :action => "update_row" })

  # DELETE
  get("/delete_workout/:id_to_remove", { :controller => "workouts", :action => "destroy_row" })

  #------------------------------

  # Routes for the Client resource:

  # CREATE
  get("/clients/new", { :controller => "clients", :action => "new_form" })
  post("/create_client", { :controller => "clients", :action => "create_row" })

  # READ
  get("/clients", { :controller => "clients", :action => "index" })
  get("/clients/:id_to_display", { :controller => "clients", :action => "show" })

  # UPDATE
  get("/clients/:prefill_with_id/edit", { :controller => "clients", :action => "edit_form" })
  post("/update_client/:id_to_modify", { :controller => "clients", :action => "update_row" })

  # DELETE
  get("/delete_client/:id_to_remove", { :controller => "clients", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
