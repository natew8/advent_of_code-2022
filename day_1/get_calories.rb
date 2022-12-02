current_count = 0
max_count = 0
current_elf = 1
lead_elf = 0
File.readlines('input').each do |cal|
  cal = cal.strip
  next current_count += cal.to_i unless cal.empty?

  if current_count > max_count
    max_count = current_count
    lead_elf = current_elf
  end

  current_count = 0
  current_elf += 1
end

pp "the max is #{max_count} which is held by elf #{lead_elf}"
