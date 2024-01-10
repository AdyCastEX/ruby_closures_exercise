## Installation

1. Create a fork of this repository.
2. Make sure [asdf](https://github.com/asdf-vm/asdf-ruby) is installed as well as ruby plugin
3. In root directory of project, install ruby using `asdf install`
4. Install project dependencies using `bundle install`

## Instructions

1. Write a method named `with_these_numbers` in the `Closures` module that will operate on 2 numbers based on a given block. If no block is provided return a list of the numbers

    ```ruby
    result = Closures.with_these_numbers(1, 4) do |first, second|
      first + second
    end
    result # Output: 5

    result = Closures.with_these_numbers(3, 6) do |first, second|
      first * second
    end
    result # Output: 18

    result = Closures.with_these_numbers(12, 3) do |first, second|
      first / second
    end
    result # Output: 4

    result = Closures.with_these_numbers(1,2)
    result # Output [1,2]
    ```

    Run the specs using `rspec spec/closures_spec.rb`. Make them pass.

2. Create your own implementation of the `.map` method in the `Closures` module. It takes in a list of items and a block then returns a new version of the list modified by what's in the block. If no block is provided return the original list. Do not use Ruby's built-in `.map` / `.collect`method.

    ```ruby
    result = Closures.map([1,2,3]) do |item|
    	item * 2
    end
    result # Output: [2,4,6]

    result = Closures.map([1,2,3])
    result # Output: [1,2,3]
    ```

    Run the specs using `rspec spec/closures_spec.rb`. Make them pass.

3. Create your own implementation of the `.filter` method in the `Closures` module. It takes in a list of items and a block then returns a filtered version of the list. If no block is provided return the original list. Do not use Ruby's built-in `.filter` / `.select` method.

    ```ruby
    result = Closures.filter([1,2,3]) do |item|
      item.odd?
    end
    result # Output: [1,3]

    result = Closures.filter([1,2,3])
    result # Output: [1,2,3]
    ```

    Run the specs using `rspec spec/closures_spec.rb`. Make them pass.

4. Create a `Car` class that allows this syntax to work

    ```ruby
    car = Car.new(color: "Red", manufacturer: "Honda") do |c|
      c.plate_number = "ABC 1234"
      c.manufacturer = "Toyota"
    end

    car.color # Red
    car.plate_number # ABC 1234
    car.manufacturer # Toyota
    ```

    Run the specs using `rspec spec/car_spec.rb`. Make them pass.

## Challenge

Create a class that uses this syntax

```ruby
bootcamp = Bootcamp.new do
  topic "Inheritance" do
    description "All about inheritance"
    details do
      lecturer "Ady"
      date "2023-3-28"
    end
  end

  topic "Closures" do
    description "Blocks, Procs and Lambdas"
    details do
      lecturer "Ady"
      date "2023-3-28"
    end
  end
end
```

This should create a new bootcamp object with the declared items saved as topics with the following fields:

1. title
2. description
3. lecturer
4. date

Tip: `instance_eval` is a way to add a method to an instance of a class on the spot. It takes in either a string or block and executes that within scope of the instance (e.g. has access to variables and methods)

Run the specs using `rspec spec/bootcamp_spec.rb`. Make them pass.

## Running in console

1. Open `irb`
2. Import file to use in console e.g. `require "./closures.rb"`.
3. You should be able to use the class in the console.

## Submission

Create a Pull Request directed to your fork of this repository then provide a link to the PR to the facilitators.
