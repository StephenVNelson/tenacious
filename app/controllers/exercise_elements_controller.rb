class ExerciseElementsController < ApplicationController
  def index
    @q = ExerciseElement.ransack(params[:q])
    @exercise_elements = @q.result(:distinct => true).includes(:exercise, :element).page(params[:page]).per(10)

    render("exercise_element_templates/index.html.erb")
  end

  def show
    @exercise_element = ExerciseElement.find(params.fetch("id_to_display"))

    render("exercise_element_templates/show.html.erb")
  end

  def new_form
    @exercise_element = ExerciseElement.new

    render("exercise_element_templates/new_form.html.erb")
  end

  def create_row
    @exercise_element = ExerciseElement.new

    @exercise_element.exercise_id = params.fetch("exercise_id")
    @exercise_element.element_id = params.fetch("element_id")

    if @exercise_element.valid?
      @exercise_element.save

      redirect_back(:fallback_location => "/exercise_elements", :notice => "Exercise element created successfully.")
    else
      render("exercise_element_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_exercise
    @exercise_element = ExerciseElement.new

    @exercise_element.exercise_id = params.fetch("exercise_id")
    @exercise_element.element_id = params.fetch("element_id")

    if @exercise_element.valid?
      @exercise_element.save

      redirect_to("/exercises/#{@exercise_element.exercise_id}", notice: "ExerciseElement created successfully.")
    else
      render("exercise_element_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_element
    @exercise_element = ExerciseElement.new

    @exercise_element.exercise_id = params.fetch("exercise_id")
    @exercise_element.element_id = params.fetch("element_id")

    if @exercise_element.valid?
      @exercise_element.save

      redirect_to("/elements/#{@exercise_element.element_id}", notice: "ExerciseElement created successfully.")
    else
      render("exercise_element_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @exercise_element = ExerciseElement.find(params.fetch("prefill_with_id"))

    render("exercise_element_templates/edit_form.html.erb")
  end

  def update_row
    @exercise_element = ExerciseElement.find(params.fetch("id_to_modify"))

    @exercise_element.exercise_id = params.fetch("exercise_id")
    @exercise_element.element_id = params.fetch("element_id")

    if @exercise_element.valid?
      @exercise_element.save

      redirect_to("/exercise_elements/#{@exercise_element.id}", :notice => "Exercise element updated successfully.")
    else
      render("exercise_element_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_exercise
    @exercise_element = ExerciseElement.find(params.fetch("id_to_remove"))

    @exercise_element.destroy

    redirect_to("/exercises/#{@exercise_element.exercise_id}", notice: "ExerciseElement deleted successfully.")
  end

  def destroy_row_from_element
    @exercise_element = ExerciseElement.find(params.fetch("id_to_remove"))

    @exercise_element.destroy

    redirect_to("/elements/#{@exercise_element.element_id}", notice: "ExerciseElement deleted successfully.")
  end

  def destroy_row
    @exercise_element = ExerciseElement.find(params.fetch("id_to_remove"))

    @exercise_element.destroy

    redirect_to("/exercise_elements", :notice => "Exercise element deleted successfully.")
  end
end
