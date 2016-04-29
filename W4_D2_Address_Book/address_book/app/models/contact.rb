class Contact < ActiveRecord::Base

  def check_name (contact)
    contact.name.match(/[a-zA-Z]/)
  end

  def check_address (contact)
    contact.address.match(/[a-zA-Z]/)
  end
end
