class Promotor < ParseResource::Base
  fields :name, :lastname, :email, :dni
  validates :dni, presence: true
end
