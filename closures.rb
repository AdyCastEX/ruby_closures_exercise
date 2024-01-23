module Closures
  def self.with_these_numbers(a, b)
    if block_given?
      yield(a, b)
    else
      [a, b]
    end
  end

  def self.map(list)
    if block_given?
      new_list = []
      list.each do |item|
        new_list << yield(item)
      end
        new_list
    else
      list
    end
  end

  def self.filter(list)
    if block_given?
      filtered_list = []
      list.each do |item|
        filtered_list << item if yield(item)
      end
        filtered_list
    else
      list
    end
  end
end
