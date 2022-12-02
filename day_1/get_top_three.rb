total_counts_array = []
current_count = 0
File.readlines('input').each_with_object(total_counts_array) do |cal, arr|
  cal = cal.strip
  next current_count += cal.to_i unless cal.empty?

  arr << current_count
  current_count = 0
end

total_top_three = total_counts_array.sort.last(3).sum

pp "Top three elves have #{total_top_three} calories total"
