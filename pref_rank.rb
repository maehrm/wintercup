# coding: utf-8
hash = Hash.new(0)
#File.open('men.txt') {|f|
File.open('women.txt') {|f|
  f.each_line{|line|
    pref = line.split[2].match(/（(.*?)）/)
    hash[pref[1]] += 1 unless pref.nil?
  }
}
puts "|都道府県|優勝回数|"
puts "|:-|-:|"
hash.sort_by {|k, v| -v }.each {|pref, c|
  puts "|#{pref}|#{c}|"
}

puts
puts
puts "['都道府県','優勝回数'],"
hash.sort_by {|k, v| -v }.each {|pref, c|
  puts "[\'#{pref}\',#{c}],"
}

