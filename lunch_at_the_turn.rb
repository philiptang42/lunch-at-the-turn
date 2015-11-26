menu = {
  "hamburger" => 400,
  "hot dog" => 300,
  "fries" => 200,
  "chips" => 100,
  "water" => 125,
  "soda" => 150
}

items_nonexistant = nil
items = []

while items_nonexistant.nil? || !items_nonexistant.empty?
  puts "So what do you want?"
  order = gets.chomp
  order.downcase!

  items = order.split(", ")

  items_nonexistant = items - menu.keys

  if !items_nonexistant.empty?
    items_nonexistant.each do |thing|
      puts "#{thing} isn't served here."
    end
  end
end

total = 0
items.each do |item|
  total += menu[item]
end

puts "The total is $#{'%.2f' % (total / 100.to_f)}."
