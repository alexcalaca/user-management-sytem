class User < ApplicationRecord
  rolify

  after_create :assign_default_role

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end

  enum account_status: [:active, :inactive]
  
  after_initialize do
    if self.new_record?
      self.account_status ||= :active
    end
  end
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
