module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def questions_quantity(questions, status)
    case status
    when :answered
      t('questions.answered', count: questions.select(&:answer).size)
    when :unanswered
      t('questions.unanswered', count: questions.reject(&:answer).size)
    end
  end
end
