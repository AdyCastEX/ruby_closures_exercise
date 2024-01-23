module Closures
  def self.with_these_numbers(first, second, &block)
    return [first, second] unless block_given?
    block.call(first, second)
  end

  def self.map(list, &block)
    return list if !block_given?

    mapped_list = []
    list.each { |item| mapped_list << block.call(item)}
    mapped_list
  end

  def self.filter(list, &block)
    return list if !block_given?

    filtered_list = []
    list.each { |item| filtered_list << item if block.call(item)}
    filtered_list
  end
end
