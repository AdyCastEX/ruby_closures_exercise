module Closures
  def self.with_these_numbers(a, b)
    return a,b unless block_given?
    yield a, b
  end

  def self.map(list)
    return list unless block_given?
    mappedArray = []
    index = 0
      while (index < list.length)
           mappedArray.push(yield list[index])
          index += 1
     end 
    return mappedArray
  end

  def self.filter(list)
    return list unless block_given?
    filteredArray = []
    index = 0
      while index < list.length
           if yield(list[index]) == true
            filteredArray.push(list[index])
           end
          index += 1
     end 
    return filteredArray
  end
end
