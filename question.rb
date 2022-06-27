class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask(playerTurn)
    puts "#{playerTurn.name} : What does #{@num1} plus #{@num2} equal?"
    answer = gets.chomp
    if (answer != @num1 + @num2)
      puts "#{playerTurn.name} : Seriously? No!"
      return false
    elsif (answer == @num1 + @num2)
      puts "#{playerTurn.name} : Yes! You are correct!"
      return True
    end
  end
end
