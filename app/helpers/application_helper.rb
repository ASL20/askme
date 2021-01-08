module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def questions_quantity(questions)
    arr = [
      questions_with_answers = questions.select(&:answer).size,
      questions_without_answers = questions.reject(&:answer).size
    ]
    result = []

    arr.each do |quantity|
      if quantity == nil || !quantity.is_a?(Numeric)
        number = 0
      end

      remainder = quantity % 10

      if !remainder.between?(1, 4) || (quantity % 100).between?(11, 14)
        result << "#{quantity} вопросов"
      elsif remainder.between?(2, 4)
        result << "#{quantity} вопроса"
      else
        result << "#{quantity} вопрос"
      end
    end
    result
  end
end
