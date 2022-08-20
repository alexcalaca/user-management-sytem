class Search < ApplicationRecord
  self.inheritance_column = "not_sti"

    def search_user
        user = User.all
        user = user.where(['name LIKE ?', name]) if name.present?
        user = user.where(['email LIKE ?', email]) if email.present?
        user = user.joins(:roles).where(['roles.name LIKE ?', role]) if role.present?
        return user
    end
end
