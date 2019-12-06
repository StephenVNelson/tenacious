class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all

    render("exercise_templates/index.html.erb")
  end

  def show
    @exercise = Exercise.find(params.fetch("id_to_display"))

    render("exercise_templates/show.html.erb")
  end

  def new_form
    @exercise = Exercise.new

    render("exercise_templates/new_form.html.erb")
  end

  def create_row
    @exercise = Exercise.new

    @exercise.right_left_bool = params.fetch("right_left_bool")
    @exercise.reps_bool = params.fetch("reps_bool")
    @exercise.resistance_bool = params.fetch("resistance_bool")
    @exercise.duration_bool = params.fetch("duration_bool")
    @exercise.work_rest_bool = params.fetch("work_rest_bool")
    @exercise.gif_link = params.fetch("gif_link")

    if @exercise.valid?
      @exercise.save

      redirect_back(:fallback_location => "/exercises", :notice => "Exercise created successfully.")
    else
      render("exercise_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @exercise = Exercise.find(params.fetch("prefill_with_id"))

    render("exercise_templates/edit_form.html.erb")
  end

  def update_row
    @exercise = Exercise.find(params.fetch("id_to_modify"))

    @exercise.right_left_bool = params.fetch("right_left_bool")
    @exercise.reps_bool = params.fetch("reps_bool")
    @exercise.resistance_bool = params.fetch("resistance_bool")
    @exercise.duration_bool = params.fetch("duration_bool")
    @exercise.work_rest_bool = params.fetch("work_rest_bool")
    @exercise.gif_link = params.fetch("gif_link")

    if @exercise.valid?
      @exercise.save

      redirect_to("/exercises/#{@exercise.id}", :notice => "Exercise updated successfully.")
    else
      render("exercise_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @exercise = Exercise.find(params.fetch("id_to_remove"))

    @exercise.destroy

    redirect_to("/exercises", :notice => "Exercise deleted successfully.")
  end
end
