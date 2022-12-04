class GetRange
    def self.get_range(input)
        start, last = input.split("-")
        (start.to_i..last.to_i).to_a
    end
end

total_overlap = 0

File.readlines("input").each {|pair|
    first_section, second_section = pair.strip.split(",").each_with_object([]) {|elf, arr|
        arr << GetRange.get_range(elf)
    }

    if (first_section & second_section).any?
        total_overlap += 1
    end
}

pp total_overlap