module ApplicationHelper
  def current_user
    User.find_by(id: 7)
  end
end
