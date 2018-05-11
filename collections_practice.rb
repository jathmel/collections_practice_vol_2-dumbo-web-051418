                  # your code goes here
require 'pry'
def begins_with_r(collection)
  collection.each do |el|
    return false if !el.start_with?('r')
  end
  true
end

def contain_a(collection)
  collection.select {|word| word.include?('a')}
end

def first_wa(collection)
  collection.each do |el|
    return el if el.to_s.start_with?('wa')
  end
end

def remove_non_strings(collection)
  collection.delete_if { |el| el.class != String}
end

def count_elements(collection)
  result = collection.each do |hash|
    hash[:count] = 0
    temp = hash[:name]
    collection.each do |el|
      if temp == el[:name]
        hash[:count] += 1
      end 
    end
  end
  result.uniq
end

# def merge_data(keys, data)
  
# end

def find_cool(collection)
  collection.select {|hash| hash.value?('cool')}
end

def organize_schools(collection)
  organized_schools = Hash.new([])
  hash = {}
  collection.each do | k, v|
    v.each do |k1, v1|
      organized_schools[v1] += [k]
    end
  end
  organized_schools
end








def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end