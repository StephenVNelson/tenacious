class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all

    render("workout_templates/index.html.erb")
  end

  def show
    @workout_exercise = WorkoutExercise.new
    @workout = Workout.find(params.fetch("id_to_display"))

    render("workout_templates/show.html.erb")
  end

  def new_form
    @workout = Workout.new

    render("workout_templates/new_form.html.erb")
  end

  def create_row
    @workout = Workout.new

    @workout.user_id = params.fetch("user_id")
    @workout.client_id = params.fetch("client_id")
    @workout.scheduled_date = params.fetch("scheduled_date")
    @workout.logged_date = params.fetch("logged_date")
    @workout.phase_number = params.fetch("phase_number")
    @workout.week_number = params.fetch("week_number")
    @workout.day_number = params.fetch("day_number")
    @workout.workout_focus = params.fetch("workout_focus")
    @workout.sets_reps_array = params.fetch("sets_reps_array")
    @workout.resistance_array = params.fetch("resistance_array")
    @workout.set_duration_array = params.fetch("set_duration_array")
    @workout.set_work_rest_array = params.fetch("set_work_rest_array")

    if @workout.valid?
      @workout.save

      redirect_back(:fallback_location => "/workouts", :notice => "Workout created successfully.")
    else
      render("workout_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_client
    @workout = Workout.new

    @workout.user_id = params.fetch("user_id")
    @workout.client_id = params.fetch("client_id")
    @workout.scheduled_date = params.fetch("scheduled_date")
    @workout.logged_date = params.fetch("logged_date")
    @workout.phase_number = params.fetch("phase_number")
    @workout.week_number = params.fetch("week_number")
    @workout.day_number = params.fetch("day_number")
    @workout.workout_focus = params.fetch("workout_focus")
    @workout.sets_reps_array = params.fetch("sets_reps_array")
    @workout.resistance_array = params.fetch("resistance_array")
    @workout.set_duration_array = params.fetch("set_duration_array")
    @workout.set_work_rest_array = params.fetch("set_work_rest_array")

    if @workout.valid?
      @workout.save

      redirect_to("/clients/#{@workout.client_id}", notice: "Workout created successfully.")
    else
      render("workout_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @workout = Workout.find(params.fetch("prefill_with_id"))

    render("workout_templates/edit_form.html.erb")
  end

  def update_row
    @workout = Workout.find(params.fetch("id_to_modify"))

    @workout.user_id = params.fetch("user_id")
    @workout.client_id = params.fetch("client_id")
    @workout.scheduled_date = params.fetch("scheduled_date")
    @workout.logged_date = params.fetch("logged_date")
    @workout.phase_number = params.fetch("phase_number")
    @workout.week_number = params.fetch("week_number")
    @workout.day_number = params.fetch("day_number")
    @workout.workout_focus = params.fetch("workout_focus")
    @workout.sets_reps_array = params.fetch("sets_reps_array")
    @workout.resistance_array = params.fetch("resistance_array")
    @workout.set_duration_array = params.fetch("set_duration_array")
    @workout.set_work_rest_array = params.fetch("set_work_rest_array")

    if @workout.valid?
      @workout.save

      redirect_to("/workouts/#{@workout.id}", :notice => "Workout updated successfully.")
    else
      render("workout_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @workout = Workout.find(params.fetch("id_to_remove"))

    @workout.destroy

    redirect_to("/users/#{@workout.user_id}", notice: "Workout deleted successfully.")
  end

  def destroy_row_from_client
    @workout = Workout.find(params.fetch("id_to_remove"))

    @workout.destroy

    redirect_to("/clients/#{@workout.client_id}", notice: "Workout deleted successfully.")
  end

  def destroy_row
    @workout = Workout.find(params.fetch("id_to_remove"))

    @workout.destroy

    redirect_to("/workouts", :notice => "Workout deleted successfully.")
  end
end
