# Write your code here!

require "pry"
def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry
 
      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end

def game_hash
hash = Hash.new
hash = {:home => {:team_name => "Brooklyn Nets", :colors => ["Black","White"], :players => [  {"Alan Anderson" => {:number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1}},
  {"Reggie Evans" => {:number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7}},
  {"Brook Lopez" => {:number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15}},
  {"Mason Plumlee" => {:number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5}},
  {"Jason Terry" => {:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}}]},

  :away => {:team_name => "Charlotte Hornets", :colors => ["Turquoise","Purple"], :players => [{"Jeff Adrien" => {:number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2}},
      {"Bismack Biyombo" => {:number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10}},
      {"DeSagna Diop" => {:number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5}},
      {"Ben Gordon" => {:number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0}},
      {"Kemba Walker" => {:number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12}}]}}
  return hash
end

def num_points_scored(player_name)
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
                if player_name == name
                  return stat_line[:points]
              end
            end
          end
        end
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
                if player_name == name
                  return stat_line[:shoe]
              end
            end
          end
        end
      end
    end
  end
end

def team_colors(team_name)
  game_hash.map do |type_game, team_info|
    team_info.reduce do |team_stuff, answer_to_stuff|
      if team_info[:team_name] == team_name
        team_info[:colors]
      end
    end
  end
end

def team_colors(team_name)
  game_hash.map do |type_game, team_info|
    if team_name == team_info[:team_name]
      team_info.map do |team_stuff, answer_to_stuff|
        if team_info[:team_name] == team_name
            return team_info[:colors]
        end
      end
    end
  end
end

def team_names
  game_hash.map do |type_game, team_info|
    team_info[:team_name]
  end
end

def player_numbers(team_name)
  new_array = []
  game_hash.map do |type_game, team_info|
    if team_name == team_info[:team_name]
      team_info.map do |team_stuff, answer_to_stuff|
        if answer_to_stuff.kind_of?(Array)
          answer_to_stuff.map do |colors_players|
            if colors_players.kind_of?(Hash)
              colors_players.map do |name, stat_line|
                new_array << stat_line[:number]
              end
            end
          end
        end
      end
    end
  end
  return new_array
end


def player_stats (player_name)
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
                if player_name == name
                  return stat_line
              end
            end
          end
        end
      end
    end
  end
end


def big_shoe_rebounds
  shoe_size = 0
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
              if stat_line[:shoe] > shoe_size
                shoe_size = stat_line[:shoe]
              end
            end
          end
        end
      end
    end
  end
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
              if stat_line[:shoe]== shoe_size
                return stat_line[:rebounds]
              end
            end
          end
        end
      end
    end
  end
end

def most_points_scored
  points = 0
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
              if stat_line[:points] > points
                points = stat_line[:points]
              end
            end
          end
        end
      end
    end
  end
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
              if stat_line[:points]== points
                return name
              end
            end
          end
        end
      end
    end
  end
end

def player_with_longest_name
  name_length = 0
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
              if name.length > name_length
                name_length = name.length
              end
            end
          end
        end
      end
    end
  end
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
              if name.length== name_length
                return name
              end
            end
          end
        end
      end
    end
  end
end

def winning_team
  home_team_score = 0
  away_team_score = 0
  game_hash.map do |type_game, team_info|
    if type_game == :home
      team_info.map do |team_stuff, answer_to_stuff|
        if answer_to_stuff.kind_of?(Array)
          answer_to_stuff.map do |colors_players|
            if colors_players.kind_of?(Hash)
              colors_players.map do |name, stat_line|
                home_team_score += stat_line[:points]
              end
            end
          end
        end
      end
    end
  end
  game_hash.map do |type_game, team_info|
    if type_game == :away
      team_info.map do |team_stuff, answer_to_stuff|
        if answer_to_stuff.kind_of?(Array)
          answer_to_stuff.map do |colors_players|
            if colors_players.kind_of?(Hash)
              colors_players.map do |name, stat_line|
                away_team_score += stat_line[:points]
              end
            end
          end
        end
      end
    end
  end
  if home_team_score>away_team_score
    return game_hash[:home][:team_name]
  else
    return game_hash[:away][:team_name]
  end
end

def long_name_steals_a_ton?
  name_length = 0
  steals = 0
  guy_with_long_name = ""
  major_stealer = ""
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
              if name.length > name_length
                name_length = name.length
              end
            end
          end
        end
      end
    end
  end
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
              if name.length== name_length
                guy_with_long_name = name
              end
            end
          end
        end
      end
    end
  end
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
              if stat_line[:steals] > steals
                steals = stat_line[:steals]
              end
            end
          end
        end
      end
    end
  end
  game_hash.map do |type_game, team_info|
    team_info.map do |team_stuff, answer_to_stuff|
      if answer_to_stuff.kind_of?(Array)
        answer_to_stuff.map do |colors_players|
          if colors_players.kind_of?(Hash)
            colors_players.map do |name, stat_line|
              if steals == stat_line[:steals]
                major_stealer = name
              end
            end
          end
        end
      end
    end
  end
  if guy_with_long_name === major_stealer
    return true
  else
    return false
  end
end