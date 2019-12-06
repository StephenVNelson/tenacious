class WorkoutExercisesController < ApplicationController
  def index
    @workout_exercises = WorkoutExercise.page(params[:page]).per(10)

    render("workout_exercise_templates/index.html.erb")
  end

  def show
    @workout_exercise = WorkoutExercise.find(params.fetch("id_to_display"))

    render("workout_exercise_templates/show.html.erb")
  end

  def new_form
    @workout_exercise = WorkoutExercise.new

    render("workout_exercise_templates/new_form.html.erb")
  end

  def create_row
    @workout_exercise = WorkoutExercise.new

    @workout_exercise.workout_id = params.fetch("workout_id")
    @workout_exercise.exercise_id = params.fetch("exercise_id")
    @workout_exercise.workout_focus = params.fetch("workout_focus")

    if @workout_exercise.valid?
      @workout_exercise.save

      redirect_back(:fallback_location => "/workout_exercises", :notice => "Workout exercise created successfully.")
    else
      render("workout_exercise_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_workout
    @workout_exercise = WorkoutExercise.new

    @workout_exercise.workout_id = params.fetch("workout_id")
    @workout_exercise.exercise_id = params.fetch("exercise_id")
    @workout_exercise.workout_focus = params.fetch("workout_focus")

    if @workout_exercise.valid?
      @workout_exercise.save

      redirect_to("/workouts/#{@workout_exercise.workout_id}", notice: "WorkoutExercise created successfully.")
    else
      render("workout_exercise_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_exercise
    @workout_exercise = WorkoutExercise.new

    @workout_exercise.workout_id = params.fetch("workout_id")
    @workout_exercise.exercise_id = params.fetch("exercise_id")
    @workout_exercise.workout_focus = params.fetch("workout_focus")

    if @workout_exercise.valid?
      @workout_exercise.save

      redirect_to("/exercises/#{@workout_exercise.exercise_id}", notice: "WorkoutExercise created successfully.")
    else
      render("workout_exercise_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @workout_exercise = WorkoutExercise.find(params.fetch("prefill_with_id"))

    render("workout_exercise_templates/edit_form.html.erb")
  end

  def update_row
    @workout_exercise = WorkoutExercise.find(params.fetch("id_to_modify"))

    @workout_exercise.workout_id = params.fetch("workout_id")
    @workout_exercise.exercise_id = params.fetch("exercise_id")
    @workout_exercise.workout_focus = params.fetch("workout_focus")

    if @workout_exercise.valid?
      @workout_exercise.save

      redirect_to("/workout_exercises/#{@workout_exercise.id}", :notice => "Workout exercise updated successfully.")
    else
      render("workout_exercise_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_workout
    @workout_exercise = WorkoutExercise.find(params.fetch("id_to_remove"))

    @workout_exercise.destroy

    redirect_to("/workouts/#{@workout_exercise.workout_id}", notice: "WorkoutExercise deleted successfully.")
  end

  def destroy_row_from_exercise
    @workout_exercise = WorkoutExercise.find(params.fetch("id_to_remove"))

    @workout_exercise.destroy

    redirect_to("/exercises/#{@workout_exercise.exercise_id}", notice: "WorkoutExercise deleted successfully.")
  end

  def destroy_row
    @workout_exercise = WorkoutExercise.find(params.fetch("id_to_remove"))

    @workout_exercise.destroy

    redirect_to("/workout_exercises", :notice => "Workout exercise deleted successfully.")
  end
end
