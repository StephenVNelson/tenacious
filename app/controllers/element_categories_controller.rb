class ElementCategoriesController < ApplicationController
  def index
    @element_categories = ElementCategory.all

    render("element_category_templates/index.html.erb")
  end

  def show
    @element = Element.new
    @element_category = ElementCategory.find(params.fetch("id_to_display"))

    render("element_category_templates/show.html.erb")
  end

  def new_form
    @element_category = ElementCategory.new

    render("element_category_templates/new_form.html.erb")
  end

  def create_row
    @element_category = ElementCategory.new

    @element_category.category_name = params.fetch("category_name")
    @element_category.position_number = params.fetch("position_number")

    if @element_category.valid?
      @element_category.save

      redirect_back(:fallback_location => "/element_categories", :notice => "Element category created successfully.")
    else
      render("element_category_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @element_category = ElementCategory.find(params.fetch("prefill_with_id"))

    render("element_category_templates/edit_form.html.erb")
  end

  def update_row
    @element_category = ElementCategory.find(params.fetch("id_to_modify"))

    @element_category.category_name = params.fetch("category_name")
    @element_category.position_number = params.fetch("position_number")

    if @element_category.valid?
      @element_category.save

      redirect_to("/element_categories/#{@element_category.id}", :notice => "Element category updated successfully.")
    else
      render("element_category_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @element_category = ElementCategory.find(params.fetch("id_to_remove"))

    @element_category.destroy

    redirect_to("/element_categories", :notice => "Element category deleted successfully.")
  end
end
