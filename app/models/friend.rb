class Friend < ApplicationRecord
  validates_presence_of :firstname, :secondname, :email, :phone, :twitter
end
