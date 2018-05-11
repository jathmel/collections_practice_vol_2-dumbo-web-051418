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

def merge_data(keys, data)
  keys.each do |el|
    data.each do |data|
      # binding.pry
      break
    end
  end 
  data
end

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