class ElementsController < ApplicationController
  def index
    @elements = Element.all

    render("element_templates/index.html.erb")
  end

  def show
    @element = Element.find(params.fetch("id_to_display"))

    render("element_templates/show.html.erb")
  end

  def new_form
    @element = Element.new

    render("element_templates/new_form.html.erb")
  end

  def create_row
    @element = Element.new

    @element.name = params.fetch("name")
    @element.category_id = params.fetch("category_id")

    if @element.valid?
      @element.save

      redirect_back(:fallback_location => "/elements", :notice => "Element created successfully.")
    else
      render("element_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @element = Element.find(params.fetch("prefill_with_id"))

    render("element_templates/edit_form.html.erb")
  end

  def update_row
    @element = Element.find(params.fetch("id_to_modify"))

    @element.name = params.fetch("name")
    @element.category_id = params.fetch("category_id")

    if @element.valid?
      @element.save

      redirect_to("/elements/#{@element.id}", :notice => "Element updated successfully.")
    else
      render("element_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_category
    @element = Element.find(params.fetch("id_to_remove"))

    @element.destroy

    redirect_to("/element_categories/#{@element.category_id}", notice: "Element deleted successfully.")
  end

  def destroy_row
    @element = Element.find(params.fetch("id_to_remove"))

    @element.destroy

    redirect_to("/elements", :notice => "Element deleted successfully.")
  end
end
