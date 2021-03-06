Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "clients#index"
  # Routes for the Element category resource:

  # CREATE
  get("/element_categories/new", { :controller => "element_categories", :action => "new_form" })
  post("/create_element_category", { :controller => "element_categories", :action => "create_row" })

  # READ
  get("/element_categories", { :controller => "element_categories", :action => "index" })
  get("/element_categories/:id_to_display", { :controller => "element_categories", :action => "show" })

  # UPDATE
  get("/element_categories/:prefill_with_id/edit", { :controller => "element_categories", :action => "edit_form" })
  post("/update_element_category/:id_to_modify", { :controller => "element_categories", :action => "update_row" })

  # DELETE
  get("/delete_element_category/:id_to_remove", { :controller => "element_categories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Element resource:

  # CREATE
  get("/elements/new", { :controller => "elements", :action => "new_form" })
  post("/create_element", { :controller => "elements", :action => "create_row" })
  post("/create_element_from_element_category", { :controller => "elements", :action => "create_row_from_element_category" })

  # READ
  get("/elements", { :controller => "elements", :action => "index" })
  get("/elements/:id_to_display", { :controller => "elements", :action => "show" })

  # UPDATE
  get("/elements/:prefill_with_id/edit", { :controller => "elements", :action => "edit_form" })
  post("/update_element/:id_to_modify", { :controller => "elements", :action => "update_row" })

  # DELETE
  get("/delete_element/:id_to_remove", { :controller => "elements", :action => "destroy_row" })
  get("/delete_element_from_category/:id_to_remove", { :controller => "elements", :action => "destroy_row_from_category" })

  #------------------------------

  # Routes for the Exercise element resource:

  # CREATE
  get("/exercise_elements/new", { :controller => "exercise_elements", :action => "new_form" })
  post("/create_exercise_element", { :controller => "exercise_elements", :action => "create_row" })
  post("/create_exercise_element_from_element", { :controller => "exercise_elements", :action => "create_row_from_element" })
  post("/create_exercise_element_from_exercise", { :controller => "exercise_elements", :action => "create_row_from_exercise" })

  # READ
  get("/exercise_elements", { :controller => "exercise_elements", :action => "index" })
  get("/exercise_elements/:id_to_display", { :controller => "exercise_elements", :action => "show" })

  # UPDATE
  get("/exercise_elements/:prefill_with_id/edit", { :controller => "exercise_elements", :action => "edit_form" })
  post("/update_exercise_element/:id_to_modify", { :controller => "exercise_elements", :action => "update_row" })

  # DELETE
  get("/delete_exercise_element/:id_to_remove", { :controller => "exercise_elements", :action => "destroy_row" })
  get("/delete_exercise_element_from_element/:id_to_remove", { :controller => "exercise_elements", :action => "destroy_row_from_element" })
  get("/delete_exercise_element_from_exercise/:id_to_remove", { :controller => "exercise_elements", :action => "destroy_row_from_exercise" })

  #------------------------------

  # Routes for the Exercise resource:

  # CREATE
  get("/exercises/new", { :controller => "exercises", :action => "new_form" })
  post("/create_exercise", { :controller => "exercises", :action => "create_row" })

  # READ
  get("/exercises", { :controller => "exercises", :action => "index" })
  get("/exercises/:id_to_display", { :controller => "exercises", :action => "show" })

  # UPDATE
  get("/exercises/:prefill_with_id/edit", { :controller => "exercises", :action => "edit_form" })
  post("/update_exercise/:id_to_modify", { :controller => "exercises", :action => "update_row" })

  # DELETE
  get("/delete_exercise/:id_to_remove", { :controller => "exercises", :action => "destroy_row" })

  #------------------------------

  # Routes for the Workout exercise resource:

  # CREATE
  get("/workout_exercises/new", { :controller => "workout_exercises", :action => "new_form" })
  post("/create_workout_exercise", { :controller => "workout_exercises", :action => "create_row" })
  post("/create_workout_exercise_from_exercise", { :controller => "workout_exercises", :action => "create_row_from_exercise" })
  post("/create_workout_exercise_from_workout", { :controller => "workout_exercises", :action => "create_row_from_workout" })

  # READ
  get("/workout_exercises", { :controller => "workout_exercises", :action => "index" })
  get("/workout_exercises/:id_to_display", { :controller => "workout_exercises", :action => "show" })

  # UPDATE
  get("/workout_exercises/:prefill_with_id/edit", { :controller => "workout_exercises", :action => "edit_form" })
  post("/update_workout_exercise/:id_to_modify", { :controller => "workout_exercises", :action => "update_row" })

  # DELETE
  get("/delete_workout_exercise/:id_to_remove", { :controller => "workout_exercises", :action => "destroy_row" })
  get("/delete_workout_exercise_from_exercise/:id_to_remove", { :controller => "workout_exercises", :action => "destroy_row_from_exercise" })
  get("/delete_workout_exercise_from_workout/:id_to_remove", { :controller => "workout_exercises", :action => "destroy_row_from_workout" })

  #------------------------------

  # Routes for the Workout resource:

  # CREATE
  get("/workouts/new", { :controller => "workouts", :action => "new_form" })
  post("/create_workout", { :controller => "workouts", :action => "create_row" })
  post("/create_workout_from_client", { :controller => "workouts", :action => "create_row_from_client" })

  # READ
  get("/workouts", { :controller => "workouts", :action => "index" })
  get("/workouts/:id_to_display", { :controller => "workouts", :action => "show" })

  # UPDATE
  get("/workouts/:prefill_with_id/edit", { :controller => "workouts", :action => "edit_form" })
  post("/update_workout/:id_to_modify", { :controller => "workouts", :action => "update_row" })

  # DELETE
  get("/delete_workout/:id_to_remove", { :controller => "workouts", :action => "destroy_row" })
  get("/delete_workout_from_client/:id_to_remove", { :controller => "workouts", :action => "destroy_row_from_client" })
  get("/delete_workout_from_user/:id_to_remove", { :controller => "workouts", :action => "destroy_row_from_user" })

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
