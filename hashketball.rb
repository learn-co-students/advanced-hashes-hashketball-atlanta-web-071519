# basic solution: 
# require 'pry'

# def game_hash
#   {
#     :away => { :team_name => "Charlotte Hornets",
#                :colors => ["Turquoise", "Purple"],
#                :players => [
#                  {:player_name => "Jeff Adrien",
#                   :number => 4,
#                   :shoe => 18,
#                   :points => 10,
#                   :rebounds => 1,
#                   :assists => 1,
#                   :steals => 2,
#                   :blocks => 7,
#                   :slam_dunks => 2
#                  },
#                  {:player_name => "Bismak Biyombo",
#                   :number => 0,
#                   :shoe => 16,
#                   :points => 12,
#                   :rebounds => 4,
#                   :assists => 7,
#                   :steals => 7,
#                   :blocks => 15,
#                   :slam_dunks => 10
#                  },
#                  {:player_name => "DeSagna Diop",
#                   :number => 2,
#                   :shoe => 14,
#                   :points => 24,
#                   :rebounds => 12,
#                   :assists => 12,
#                   :steals => 4,
#                   :blocks => 5,
#                   :slam_dunks => 5
#                  },
#                  {:player_name => "Ben Gordon",
#                   :number => 8,
#                   :shoe => 15,
#                   :points => 33,
#                   :rebounds => 3,
#                   :assists => 2,
#                   :steals => 1,
#                   :blocks => 1,
#                   :slam_dunks => 0
#                  },
#                  {:player_name => "Brendan Haywood",
#                   :number => 33,
#                   :shoe => 15,
#                   :points => 6,
#                   :rebounds => 12,
#                   :assists => 12,
#                   :steals => 22,
#                   :blocks => 5,
#                   :slam_dunks => 12
#                  }
#                ]
#             },
#     :home => { :team_name => "Brooklyn Nets",
#                :colors => ["Black", "White"],
#                :players => [
#                  {:player_name => "Alan Anderson",
#                   :number => 0,
#                   :shoe => 16,
#                   :points => 22,
#                   :rebounds => 12,
#                   :assists => 12,
#                   :steals => 3,
#                   :blocks => 1,
#                   :slam_dunks => 1
#                  },
#                  {:player_name => "Reggie Evans",
#                   :number => 30,
#                   :shoe => 14,
#                   :points => 12,
#                   :rebounds => 12,
#                   :assists => 12,
#                   :steals => 12,
#                   :blocks => 12,
#                   :slam_dunks => 7
#                  },
#                  {:player_name => "Brook Lopez",
#                   :number => 11,
#                   :shoe => 17,
#                   :points => 17,
#                   :rebounds => 19,
#                   :assists => 10,
#                   :steals => 3,
#                   :blocks => 1,
#                   :slam_dunks => 15
#                  },
#                  {:player_name => "Mason Plumlee",
#                   :number => 1,
#                   :shoe => 19,
#                   :points => 26,
#                   :rebounds => 12,
#                   :assists => 6,
#                   :steals => 3,
#                   :blocks => 8,
#                   :slam_dunks => 5
#                  },
#                  {:player_name => "Jason Terry",
#                   :number => 31,
#                   :shoe => 15,
#                   :points => 19,
#                   :rebounds => 2,
#                   :assists => 2,
#                   :steals => 4,
#                   :blocks => 11,
#                   :slam_dunks => 1
#                  }
#                ]
#     }
#   }
# end


# def num_points_scored(dude)
#   game_hash.each do |place, team|
#     team.each do |attribute, data|
#       if attribute == :players
#         data.each do |player|
#           if player[:player_name] == dude
#              return player[:points]
#           end
#         end
#       end
#     end
#   end

# end

# def shoe_size(dude)
#   game_hash.each do |place, team|
#     team.each do |attribute, data|
#       if attribute == :players
#         data.each do |player|
#           if player[:player_name] == dude
#              return player[:shoe]
#           end
#         end
#       end
#     end
#   end

# end

# def team_colors(team_name)
#   game_hash.each do |place, team|
#     if team[:team_name] == team_name
#       return game_hash[place][:colors]
#     end
#   end

# end

# def team_names
#   game_hash.collect do |place, team|
#     team[:team_name]
#   end

# end

# def player_numbers(team_name)
#   nums = []
#   game_hash.each do |place, team|
#     if team[:team_name] == team_name
#       team.each do |attribute, data|
#         if attribute == :players
#           data.each do |data|
#             nums << data[:number]
#           end
#         end
#       end
#     end
#   end
#   nums

# end

# def player_stats(dude)
#   new_hash = {}
#   game_hash.collect do |place, team|
#     team.each do |attribute, data|
#       if attribute == :players 
#         game_hash[place][attribute].each do |player|
#           if player[:player_name] == dude

#             new_hash = player.delete_if do |k, v|
#               k == :player_name
#             end
#           end
#         end
#       end
#     end
#   end
#   new_hash


# end

# def big_shoe_rebounds
#     biggest_shoe = 0
#   num_rebounds = 0

#   game_hash.each do |team, game_data|
#     game_data[:players].each do |player|
#       if player[:shoe] > biggest_shoe
#         biggest_shoe = player[:shoe]
#         num_rebounds = player[:rebounds]
#       end
#     end
#   end

#   num_rebounds

# end


################


#advanced solution: 

def game_hash
  {
    :home => { :team_name => "Charlotte Hornets",
               :colors => ["Turquoise", "Purple"],
               :players => [
                 {:player_name => "Jeff Adrien",
                  :number => 4,
                  :shoe => 18,
                  :points => 10,
                  :rebounds => 1,
                  :assists => 1,
                  :steals => 2,
                  :blocks => 7,
                  :slam_dunks => 2
                 },
                 {:player_name => "Bismak Biyombo",
                  :number => 0,
                  :shoe => 16,
                  :points => 12,
                  :rebounds => 4,
                  :assists => 7,
                  :steals => 7,
                  :blocks => 15,
                  :slam_dunks => 10
                 },
                 {:player_name => "DeSagna Diop",
                  :number => 2,
                  :shoe => 14,
                  :points => 24,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 4,
                  :blocks => 5,
                  :slam_dunks => 5
                 },
                 {:player_name => "Ben Gordon",
                  :number => 8,
                  :shoe => 15,
                  :points => 33,
                  :rebounds => 3,
                  :assists => 2,
                  :steals => 1,
                  :blocks => 1,
                  :slam_dunks => 0
                 },
                 {:player_name => "Brendan Haywood",
                  :number => 33,
                  :shoe => 15,
                  :points => 6,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 22,
                  :blocks => 5,
                  :slam_dunks => 12
                 }
               ]
            },
    :away => { :team_name => "Brooklyn Nets",
               :colors => ["Black", "White"],
               :players => [
                 {:player_name => "Alan Anderson",
                  :number => 0,
                  :shoe => 16,
                  :points => 22,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 3,
                  :blocks => 1,
                  :slam_dunks => 1
                 },
                 {:player_name => "Reggie Evans",
                  :number => 30,
                  :shoe => 14,
                  :points => 12,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 12,
                  :blocks => 12,
                  :slam_dunks => 7
                 },
                 {:player_name => "Brook Lopez",
                  :number => 11,
                  :shoe => 17,
                  :points => 17,
                  :rebounds => 19,
                  :assists => 10,
                  :steals => 3,
                  :blocks => 1,
                  :slam_dunks => 15
                 },
                 {:player_name => "Mason Plumlee",
                  :number => 1,
                  :shoe => 19,
                  :points => 26,
                  :rebounds => 12,
                  :assists => 6,
                  :steals => 3,
                  :blocks => 8,
                  :slam_dunks => 5
                 },
                 {:player_name => "Jason Terry",
                  :number => 31,
                  :shoe => 15,
                  :points => 19,
                  :rebounds => 2,
                  :assists => 2,
                  :steals => 4,
                  :blocks => 11,
                  :slam_dunks => 1
                 }
               ]
    }
  }
end

# This is a helper method that makes it less repetitive to iterate through
# the hash for every statistic. That way, I can have methods that return
# each stat given a player's name, but don't have to write the same loop
# over and over again.

def iterate_through_players_for(name, statistic)
  game_hash.each do |team, game_data|
    game_data[:players].each do |player|
      if player[:player_name] == name
        return player[statistic]
      end
    end
  end
end

def num_points_scored(player_name)
  iterate_through_players_for(player_name, :points)
end

def shoe_size(player_name)
  iterate_through_players_for(player_name, :shoe)
end

def team_colors(team_name)
  game_hash.each do |team, game_data|
    if game_data[:team_name] == team_name
      return game_data[:colors]
    end
  end
end

def team_names
  game_hash.map do |team, game_data|
    game_data[:team_name]
  end
end

def player_numbers(team_name)
  game_hash.each do |team, game_data|
    if game_data[:team_name] == team_name
      return game_data[:players].collect do |player|
        player[:number]
      end
    end
  end
end

def player_stats(player_name)
  statistics = [
                :number,
                :shoe,
                :points,
                :rebounds,
                :assists,
                :steals,
                :blocks,
                :slam_dunks
               ]

  # There are definitely different ways to do this. In fact, this is probably not
  # the best way. Whenever you see an empty object defined right before an each
  # loop and then that object being returned, it's generally a "bad code smell".
  stats_hash = {}
  statistics.each do |stat|
    stats_hash[stat] = iterate_through_players_for(player_name, stat)
  end

  stats_hash
end

def big_shoe_rebounds
  # Set up some counters to help keep track of the currently largest shoe size,
  # and store that person's rebound count.
  biggest_shoe = 0
  num_rebounds = 0

  game_hash.each do |team, game_data|
    game_data[:players].each do |player|
      if player[:shoe] > biggest_shoe
        biggest_shoe = player[:shoe]
        num_rebounds = player[:rebounds]
      end
    end
  end

  num_rebounds
end

# Bonus Questions

# Here's another helper method. Since there are two bonus questions that ask me
# to return the name of a player with the most of some stat, I can use this method
# to DRY (don't repeat yourself) up my code.
def player_with_most_of(statistic)
  player_name = nil
  amount_of_stat = 0

  game_hash.each do |team, game_data|
    game_data[:players].each do |player|
      if player[statistic].is_a? String
        if player[statistic].length > amount_of_stat
          amount_of_stat = player[statistic].length
          player_name = player[:player_name]
        end
      elsif player[statistic] > amount_of_stat
        amount_of_stat = player[statistic]
        player_name = player[:player_name]
      end
    end
  end

  player_name
end

def most_points_scored
  player_with_most_of(:points)
end

def winning_team
  # Set up a hash to keep track of the points scored by each team. This way, we
  # can iterate through each player, get their points scored, and increase the
  # count in the hash.

  scores = {"Brooklyn Nets" => 0, "Charlotte Hornets" => 0}

  game_hash.each do |team, game_data|
    game_data[:players].each do |player|
      scores[game_data[:team_name]] += iterate_through_players_for(player[:player_name], :points)
    end
  end

  scores.max_by { |k,v| v }.first
end

def player_with_longest_name
  player_with_most_of(:player_name)
end

# Super Bonus Question

def long_name_steals_a_ton?
  player_with_most_of(:steals) == player_with_most_of(:player_name)
end

