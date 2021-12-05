class TennisScore
  def initialize
    @score = {
      '0'         => '0',
      '15'        => '15',
      '30'        => '30',
      '40'        => '40',
      'advantage' => 'A',
      'deuce'     => 'D',
      'game'      => 'G'
    }
  end

  def score(player1_points, player2_points)
    if player1_points == player2_points
      return @score[player1_points.to_s]
    end

    if player1_points > 3 && player2_points > 3
      if player1_points == player2_points + 1
        return 'advantage'
      elsif player1_points == player2_points + 2
        return 'game'
      end
    end

    if player1_points > 3 && player2_points > 3
      if player1_points == player2_points + 2
        return 'deuce'
      end
    end

    if player1_points > 3 && player2_points > 3
      if player1_points == player2_points + 3
        return 'game'
      end
    end

    return @score[player1_points.to_s] + '-' + @score[player2_points.to_s]
  end
end
