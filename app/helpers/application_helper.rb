module ApplicationHelper
	def team(id)
    case id
      when 1
        'Design'
      when 2
        'Sales'
      when 3
      	'Customer Service'
      when 4
      	'IT Support'
    end
  end

  def approval(boolean)
    case boolean
      when true
        'blocked'
      when false
        'active'
    end
  end

  def exam_level(id)
    case id
      when 1
        'cơ bản'
      when 2
        'nâng cao'
      when 3
        'khó'
      when 4
        'cực khó'
    end
  end

  def exam_type(id)
    case id
      when 1
        'trắc nghiệm'
      when 2
        'tự luận'
    end
  end
end