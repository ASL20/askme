module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def questions_quantity(questions)
    quantity = questions.size

    if quantity == nil || !quantity.is_a?(Numeric)
      number = 0
    end

    remainder = quantity % 10

    if !remainder.between?(1, 4) || (quantity % 100).between?(11, 14)
      "#{quantity} вопросов"
    elsif remainder.between?(2, 4)
      "#{quantity} вопроса"
    else
      "#{quantity} вопрос"
    end
  end
end
