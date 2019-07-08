def game_hash 
  {
    :home => {
      :team_name => 'Brooklyn Nets',
      :colors => ['Black', 'White'],
      :players => [ 
        {
        :name => 'Alan Anderson',
        :number => 0, 
        :shoe => 16, 
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3, 
        :blocks => 1, 
        :slam_dunks => 1,
        },
        {
        :name => 'Reggie Evans',
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7,
        },
        {
        :name => 'Brook Lopez',
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10, 
        :steals => 3, 
        :blocks => 1, 
        :slam_dunks => 15, 
        },
        {
        :name => 'Mason Plumlee',
        :number => 1, 
        :shoe => 19, 
        :points => 26, 
        :rebounds => 11, 
        :assists => 6, 
        :steals => 3, 
        :blocks => 8, 
        :slam_dunks => 5, 
        },
        {
        :name => 'Jason Terry', 
        :number => 31,
        :shoe => 15, 
        :points => 19, 
        :rebounds => 2, 
        :assists => 2, 
        :steals => 4, 
        :blocks => 11,
        :slam_dunks => 1,  
        }
      ]
    },
  
    :away => {
       :team_name => 'Charlotte Hornets',
      :colors => ['Turquoise', 'Purple'],
      :players => [
        
        {:name => 'Jeff Adrien',
        :number => 4, 
        :shoe => 18,  
        :points => 10, 
        :rebounds => 1, 
        :assists => 1, 
        :steals => 2, 
        :blocks => 7, 
        :slam_dunks => 2,
        },
        {
        :name => 'Bismack Biyombo',
        :number => 0, 
        :shoe => 16, 
        :points => 12, 
        :rebounds => 4, 
        :assists => 7, 
        :steals => 22, 
        :blocks => 15, 
        :slam_dunks => 10,  
        },
        {
        :name => 'DeSagna Diop',
        :number => 2, 
        :shoe => 14, 
        :points => 24, 
        :rebounds => 12, 
        :assists => 12, 
        :steals => 4, 
        :blocks => 5, 
        :slam_dunks => 5, 
        },
        {
        :name => 'Ben Gordon',
        :number => 8, 
        :shoe => 15, 
        :points => 33, 
        :rebounds => 3, 
        :assists => 2, 
        :steals => 1, 
        :blocks => 1, 
        :slam_dunks => 0,  
        },
        {
        :name => 'Kemba Walker',
        :number => 33,
        :shoe => 15, 
        :points => 6, 
        :rebounds => 12, 
        :assists => 12, 
        :steals => 7, 
        :blocks => 5, 
        :slam_dunks => 12,
        }
      ]
    }
  }
end 

def num_points_scored (player)
  points = 0
  game_hash.map {|team, details_hash|
    players_array = details_hash[:players]
      players_array.map {|player_details_hash|
        if player_details_hash[:name] == player
          points = player_details_hash[:points]
        end
    }
  }
  return points
end

def shoe_size (player)
  size = 0
  game_hash.map {|team, details_hash|
    players_array = details_hash[:players]
      players_array.map {|player_details_hash|
        if player_details_hash[:name] == player
          size = player_details_hash[:shoe]
        end
    }
  }
  return size
end

def team_colors(team_name)
  colors = ''
  game_hash.map {|team, details_hash|
    if details_hash[:team_name] == team_name
      colors = details_hash[:colors]
    end 
  }
  return colors 
end 

def team_names
  game_hash.collect {|team, details_hash|
    details_hash[:team_name]
  }
end

def player_numbers(team_name)
  numbers = []
  game_hash.map {|team, details_hash|
    if details_hash[:team_name] == team_name
      details_hash[:players].map {|players|
        players.map {|key, value|
          if key == :number 
            numbers << value 
          end 
        }
      }
    end 
  }
  return numbers
end

def player_stats(player)
  stats = nil 
  game_hash.map {|team, details_hash|
    players_array = details_hash[:players]
      players_array.map {|player_details_hash|
        if player_details_hash[:name] == player
      stats = player_details_hash.reject{|key, value| key.to_s.match('name')}
    end 
    }
  }
  return stats
end 

def big_shoe_rebounds
  biggest_shoe_size = 0
  rebounds = 0
    game_hash.map { | team, details_hash|
      details_hash[:players].map { | player_details |
        if player_details[:shoe] > biggest_shoe_size
          biggest_shoe_size = player_details[:shoe]
          rebounds = player_details[:rebounds]
        end
      }
    }
  return rebounds
end

def most_points_scored
  most_points = 0
  most_points_player = ''
    game_hash.map { | team, details_hash|
      details_hash[:players].map { | player_details |
        if player_details[:points] > most_points
          most_points= player_details[:points]
          most_points_player = player_details[:name]
        end
      }
    }
  return most_points_player 
end

def winning_team
  away_total_points = 0
  home_total_points = 0
    game_hash[:away][:players].map { |stats|
      away_total_points += stats[:points]
    }
    game_hash[:home][:players].map { |stats|
      home_total_points += stats[:points]
    }
    if away_total_points > home_total_points
       game_hash[:away][:team_name]
    elsif away_total_points < home_total_points
       game_hash[:home][:team_name]
    else
      "It's a tie!"
    end
end

def player_with_longest_name
  long_name = ''
  game_hash.map {|team, details_hash|
    details_hash[:players].map {|stats|
      if stats[:name].length > long_name.length 
        long_name = stats[:name]
      end 
    }
  }
  return long_name 
end

def long_name_steals_a_ton?
  high_steals_player = ''
  steals = 0 
  game_hash.map {|team, details_hash|
    details_hash[:players].map {|stats|
      if stats[:steals] > steals
        steals = stats[:steals] 
        high_steals_player = stats[:name]
      end 
    }
  }
  return high_steals_player == player_with_longest_name
end 