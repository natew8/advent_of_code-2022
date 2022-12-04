require "set"

up_hash = Hash[("A".."Z").to_a.zip((27..52).to_a)]
down_hash = Hash[("a".."z").to_a.zip((1..26).to_a)]

total_score = 0

File.readlines("input").map(&:strip).each{ |line| 
    comp_1, comp_2 = line.chars.each_slice(line.length / 2).to_a

    common_item = comp_1.to_set & comp_2.to_set

    total_score += up_hash[*common_item] || down_hash[*common_item]
}

pp total_score