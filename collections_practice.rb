def sort_array_asc(numbers)
    numbers.sort do |a, b|
        a <=> b
    end
end

def sort_array_desc(numbers)
    numbers.sort do |b, a|
        a <=> b
    end
end
 
def sort_array_char_count(strings)
    strings.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements_from_to(array, index, destination_index)
    temp = array[index]
    array[index] = array[destination_index]
    array[destination_index] = temp
end

def swap_elements(array)
    swap_elements_from_to(array, 1, 2)
    return array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.each do |string|
        if string.length > 2
            string[2] = "$"
        end
    end
end

def find_a(array)
    array.select do |string|
        string.start_with?("a")
    end
end

def sum_array(numbers)
    numbers.inject { |sum, n| sum + n}
end

def add_s(array)
    array.each_with_index.collect{|element, index| index == 1 ? element : (element + "s")}
end
