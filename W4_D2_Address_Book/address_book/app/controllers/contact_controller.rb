class ContactController < ApplicationController

  def index
    @contacts = Contact.order(name: :asc)
  end

  def new
  end

  def create
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone],
      :email_address => params[:contact][:email])

    if contact.check_name(contact)!= nil && contact.check_address(contact) != nil
      contact.save
      redirect_to("/contacts")
    else
      flash[:notice] = "Please, complete name and address at least"
      redirect_to("/contacts/new")
    end
  end

  def show
    # @contact = Contact.find(params[:id])
    id = params[:id]
    @selected_contact = Contact.find_by(id: id)
  end

  def favorite
    id = params[:id]
    @selected_contact = Contact.find_by(id: id)
    # :favourite => params[:favourite])
    # if params[:value] == "true"
    #   value = true
    # elsif params[:value] == "false"
    #   value = false
    # end
      
    @selected_contact.update_attribute(:favourite, true)
    redirect_to("/contacts")
  end

end
