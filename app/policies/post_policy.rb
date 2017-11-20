class PostPolicy < ApplicationPolicy
	def update?
    record.user_id == user.id || user.types.include?user.try(user.type)
  end
end