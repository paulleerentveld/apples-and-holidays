require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  output = []
  holiday_hash[:winter].each do |holiday, supplies|
    output << supplies
  end
  output.flatten
end



def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies_array|
      puts "  #{holiday.to_s.split("_").map {|word| word.capitalize}.join(" ")}: #{supplies_array.join(", ")}"
    end
  end
end






def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies_array|
      bbq_holidays << holiday if supplies_array.include? "BBQ"
    end
  end
  bbq_holidays
end


# holiday_hash = {
#     :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }

# all_holidays_with_bbq(holiday_hash)





