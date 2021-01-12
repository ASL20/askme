module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def questions_quantity(questions)
    [
      t(:questions, count: questions.select(&:answer).size),
      t(:questions, count: questions.reject(&:answer).size)
    ]
  end
end
