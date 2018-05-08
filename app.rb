begin # do while loop
  print "Which calculator would you like to use? Type B for basic, A for advanced, or BMI to calculate your BMI. Type exit to exit the app."
  which_calc = gets.chomp
  if which_calc == "B"
    puts "Enter first value"
    value1 = gets.chomp
    puts "Enter second value"
    value2 = gets.chomp
    puts "What operation would you like to perform? Choose (a)dd, (s)ubtract, (m)ultiply or (d)ivide."
    operation = gets.chomp
  end
  if operation == "a"
    sum = value1.to_f + value2.to_f
    puts "#{value1} + #{value2} = #{sum}"
  elsif operation == "s"
    sum = value1.to_f - value2.to_f
    puts "#{value1} - #{value2} = #{sum}"
  elsif operation == "m"
    sum = value1.to_f * value2.to_f
    puts "#{value1} * #{value2} = #{sum}"
  elsif operation == "d"
    sum = value1.to_f / value2.to_f
    puts "#{value1} / #{value2} = #{sum}"
  end

  #Advanced calculator
  if which_calc == "A"
    puts "Enter first value"
    value1 = gets.chomp
    puts "What operation would you like to perform? Choose (p)ower or (sq)uare root."
    operation = gets.chomp
  end

  if operation == "p"
    puts "Enter the exponent"
    exponent = gets.chomp
    power = value1.to_i ** exponent.to_i
    puts "#{value1} to the power of #{exponent} = #{power}"
  elsif operation == "sq"
    sum = Math.sqrt(value1.to_i)
    puts "The square root of #{value1} = #{sum}"
  end

  #BMI calculate

  if which_calc == "BMI"
    puts "Do you want to use imperial or metric measurements?"
    measure = gets.chomp
  end
  if measure == "imperial"
    imperial = true
  end
  if measure == "metric"
    imperial = false
  end
  if imperial == true
    puts "Enter your weight in stone and pounds"
    imperial_weight = gets.chomp
  end
  if imperial == false
    puts "Enter your weight in kilos"
    metric_weight = gets.chomp
  end


end while which_calc != "exit" #end of massive do while loop
