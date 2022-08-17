class User < ApplicationRecord
  rolify

  after_create :assign_default_role

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end

  def user_role
    self.roles.pluck("name")
  end

  enum account_status: [:active, :inactive]
  
  after_initialize do
    if self.new_record?
      self.account_status ||= :active
    end
  end  

  def active_for_authentication?
    super && active?
  end

  def inactive_message
    "You are not allowed to log in. Your account is inactive"
  end

  def deactivate_user
    inactive! unless inactive?
  end
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
