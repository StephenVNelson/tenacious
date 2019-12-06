class ClientsController < ApplicationController
  def index
    @clients = Client.all

    render("client_templates/index.html.erb")
  end

  def show
    @workout = Workout.new
    @client = Client.find(params.fetch("id_to_display"))

    render("client_templates/show.html.erb")
  end

  def new_form
    @client = Client.new

    render("client_templates/new_form.html.erb")
  end

  def create_row
    @client = Client.new

    @client.name = params.fetch("name")
    @client.email = params.fetch("email")
    @client.weekley_commitment = params.fetch("weekley_commitment")
    @client.phone = params.fetch("phone")

    if @client.valid?
      @client.save

      redirect_back(:fallback_location => "/clients", :notice => "Client created successfully.")
    else
      render("client_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @client = Client.find(params.fetch("prefill_with_id"))

    render("client_templates/edit_form.html.erb")
  end

  def update_row
    @client = Client.find(params.fetch("id_to_modify"))

    @client.name = params.fetch("name")
    @client.email = params.fetch("email")
    @client.weekley_commitment = params.fetch("weekley_commitment")
    @client.phone = params.fetch("phone")

    if @client.valid?
      @client.save

      redirect_to("/clients/#{@client.id}", :notice => "Client updated successfully.")
    else
      render("client_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @client = Client.find(params.fetch("id_to_remove"))

    @client.destroy

    redirect_to("/clients", :notice => "Client deleted successfully.")
  end
end
