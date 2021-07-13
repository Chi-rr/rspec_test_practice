class User
  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def greet
    if @age <= 12
      "#{@name}でーす！"
    else
      "#{@name}です"
    end
  end
end
