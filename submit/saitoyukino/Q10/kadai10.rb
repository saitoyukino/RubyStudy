#!/usr/bin/env ruby

require 'thor'

class Bmi <Thor
  default_command :bmi
  desc 'bmi','parram : height,weight'
    def  bmi(height = 0,weight = 0)
    bmi = weight.to_i / ((height.to_f / 100) * (height.to_f / 100))
    puts "bmi:#{bmi}"
    if bmi < 18.5
      puts "低体重"
    elsif bmi >= 18.5 && bmi <= 25
      puts "普通体重"
    elsif bmi >= 25 && bmi <= 30
      puts "肥満1"
    elsif bmi >= 30 && bmi <= 35
      puts "肥満2"
    elsif bmi >= 35 && bmi <= 40
      puts "肥満3"
    else
      puts "肥満4"
    end
  end
end

Bmi.start(ARGV)
