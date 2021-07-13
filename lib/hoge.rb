class User
  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def greet
    if @age <= 12
      "#{@age}でーす！"
    else
      "#{@age}です"
    end
  end
end
