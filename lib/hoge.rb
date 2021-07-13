class User
  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def greet
    if child?
      "#{@name}でーす！"
    else
      "#{@name}です"
    end
  end

  def child?
    @age <= 12
  end
end
