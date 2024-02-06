class Property < ApplicationRecord
  #enum :type,  [ :Residential, :Office, :Rental ]
  enum types: { Residential: 0, Office: 1, Rental: 2 }
  validates :name, presence: true
  belongs_to :user
  before_create :validate_admin_user


  private
  def validate_admin_user
    unless admin_user?
      errors.add(:base, "Only admin users can create a property.")
      throw(:abort)
    end
  end

  def admin_user?
    user && user.role=="admin_user"
  end
end
