class Game
  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    playerTurn = @player1
    enenmy = @player2
    loop do
      question = Question.new

      if (question.ask(playerTurn) == false)
        playerTurn.reduceLife
        if (playerTurn.life == 0)
          puts "#{enenmy.name} wins with #{enenmy.life} / 3"
          break
        end
      end
      puts "#{playerTurn.name} #{playerTurn.life} life vs #{enenmy.name} #{enenmy.life} life"
      if (playerTurn == @player1)
        playerTurn = @player2
        enenmy = @player1
      else
        playerTurn = @player1
        enenmy = @player2
      end
    end
  end
end
