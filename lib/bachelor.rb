def get_first_name_of_season_winner(data, season)
  winner_first_name = []
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if value == "Winner" && season == season_number
          winner_first_name = contestant["name"].split
        end
      end 
    end 
  end
  winner_first_name[0]
end

def get_contestant_name(data, occupation)
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if value == occupation
          return contestant["name"]
        end
      end 
    end 
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if value == hometown
          counter += 1
        end
      end 
    end 
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if value == hometown
          return contestant["occupation"]
        end
      end 
    end 
  end
end

def get_average_age_for_season(data, season)
  average_array = []
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if season == season_number
          average_array << contestant["age"].to_i
        end
      end 
    end 
  end
    (average_array.inject{|x, y| x + y}.to_f / average_array.length).round
end
