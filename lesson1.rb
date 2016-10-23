require 'date'

class Lesson1
  def sum(val = 0)
    array = val.to_s.split('')
    amount = array.map(&:to_i).reduce(0, :+)
    amount
  end

  def age(birthday)
    if birthday.nil?
      'Invalid Date Format'
    else
      today = Date.parse(Time.now.to_s)
      day = (today - Date.parse(birthday)).to_i
      result = "Я живу #{day / 365} лет или #{day} дн или #{day * 24} ча, или
      #{day * 24 * 60} минут, или #{day * 24 * 60 * 60} секунд"
      result
    end
  end

  def name
    name = gets
    surname = gets
    full_name = gets

    result = "Hello #{name} #{surname} #{full_name}!"
    result
  end
end
