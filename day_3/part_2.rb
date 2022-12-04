require "set"

up_hash = Hash[("A".."Z").to_a.zip((27..52).to_a)]
down_hash = Hash[("a".."z").to_a.zip((1..26).to_a)]

total_score = 0

File.readlines("input").each_slice(3) { |line| 
     elf_1, elf_2, elf_3 = *line.each_with_object([]) {|elf, arr|
        arr << elf.strip.split("").to_set
    }
    common_badge = elf_1 & elf_2 & elf_3

    total_score += up_hash[*common_badge] || down_hash[*common_badge]
}

pp total_score