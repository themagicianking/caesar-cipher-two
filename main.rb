def decode(string, shift)
  new_array = []
  converted_array = []

  string_array = string.split("")
  string_array.each do |char|
    if char == " "
      new_num = 160
    else
      new_num = char.ord - 96 + shift
    end
    new_array.push(new_num)
  end

  new_array.each do |num|
    if num == 160
      new_char = " "
    else
      new_char = (num + 96).chr
    end
    puts new_char
    converted_array.push(new_char)
  end

  print converted_array
end