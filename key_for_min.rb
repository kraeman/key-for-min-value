# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    key = name_hash.collect do |name, number|
        name
    end
    value = name_hash.collect do |name, number|
        number
    end
    if key == []
        return nil
    end
    lowest = value[0]
    value.each do |num|
        if num <= lowest
            lowest = num
        end
    end
    return key[value.index(lowest)]
end