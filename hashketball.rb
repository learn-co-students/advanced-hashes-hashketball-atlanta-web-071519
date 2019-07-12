require 'pry'

def game_hash
    game_hash = {
        :home => {
            :team_name => "Brooklyn Nets",
            :colors => ["Black", "White"], #Strings of team colors
            :players => {
                "Alan Anderson" => {
                    :number => 0,
                    :shoe => 16,
                    :points => 22,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 1
                },
                "Reggie Evans" => {
                    :number => 30,
                    :shoe => 14,
                    :points => 12,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 12,
                    :blocks => 12,
                    :slam_dunks => 7
                },
                "Brook Lopez" => {
                    :number => 11,
                    :shoe => 17,
                    :points => 17,
                    :rebounds => 19,
                    :assists => 10,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 15
                },
                "Mason Plumlee" => {
                    :number => 1,
                    :shoe => 19,
                    :points => 26,
                    :rebounds => 12,
                    :assists => 6,
                    :steals => 3,
                    :blocks => 8,
                    :slam_dunks => 5
                },
                "Jason Terry" => {
                    :number => 31,
                    :shoe => 15,
                    :points => 19,
                    :rebounds => 2,
                    :assists => 2,
                    :steals => 4,
                    :blocks => 11,
                    :slam_dunks => 1
                }
            }
        },
        :away => {
            :team_name => "Charlotte Hornets",
            :colors => ["Turquoise", "Purple"],
            :players => {
                "Jeff Adrien" => {
                    :number => 4,
                    :shoe => 18,
                    :points => 10,
                    :rebounds => 1,
                    :assists => 1,
                    :steals => 2,
                    :blocks => 7,
                    :slam_dunks => 2
                },
                "Bismak Biyombo" => {
                    :number => 0,
                    :shoe => 16,
                    :points => 12,
                    :rebounds => 4,
                    :assists => 7,
                    :steals => 7,
                    :blocks => 15,
                    :slam_dunks => 10
                },
                "DeSagna Diop" => {
                    :number => 2,
                    :shoe => 14,
                    :points => 24,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 4,
                    :blocks => 5,
                    :slam_dunks => 5
                },
                "Ben Gordon" => {
                    :number => 8,
                    :shoe => 15,
                    :points => 33,
                    :rebounds => 3,
                    :assists => 2,
                    :steals => 1,
                    :blocks => 1,
                    :slam_dunks => 0
                },
                "Brendan Haywood" => {
                    :number => 33,
                    :shoe => 15,
                    :points => 6,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 22,
                    :blocks => 5,
                    :slam_dunks => 12
                }
            }
        }
    }
end

def shoe_size(player_name)
    game_hash.each do |_, team|
        if team[:players][player_name]
            return team[:players][player_name][:shoe]
        end
    end
end

def player_stats(player_name)
    game_hash.each do |origin, team|
      stats = team[:players][player_name]
      if stats # If not empty. Why does this have to be checked? If this line is commented out I get nil.
          return stats
      end
    end
end

def player_names(team_name)
    names = []
    game_hash.each do |origin, team|
        team[:players].each do |name, stats|
            names << name
        end
    end
    return names
end

def biggest_shoe_size_rebound(team_name)
    players = player_names(team_name)
    largest_shoe = 0
    name = ""

    players.each do |player|
        if largest_shoe < shoe_size(player)
            largest_shoe = shoe_size(player)
            name = player
        end
    end
    puts player_stats(name)[:rebounds]
end

def big_shoe_rebounds(team_name1, team_name2)
    most_rebounds = 0
    if biggest_shoe_size_rebound(team_name1) < biggest_shoe_size_rebound(team_name2)
        most_rebounds = biggest_shoe_size_rebound(team_name2)
    else
        most_rebounds = biggest_shoe_size_rebound(team_name1)
    end
    puts most_rebounds
end

big_shoe_rebounds("Charlotte Hornets")
