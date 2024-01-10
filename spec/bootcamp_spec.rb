require "./bootcamp.rb"

RSpec.describe Bootcamp do
  subject do
    Bootcamp.new do
      topic "Inheritance" do
        description "All about inheritance"
        details do
          lecturer "Mikee"
          date "2023-3-27"
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
  end

  it "saves the correct number of topics" do
    expect(subject.topics.count).to eq 2
  end

  it "saves the correct titles" do
    topics = subject.topics.map { |topic| topic[:title] }
    expect(topics).to match_array(["Inheritance", "Closures"])
  end

  it "saves the correct descriptions" do
    topics = subject.topics.map { |topic| topic[:description] }
    expect(topics).to match_array(["All about inheritance", "Blocks, Procs and Lambdas"])
  end

  it "saves the correct lecturers" do
    topics = subject.topics.map { |topic| topic[:lecturer] }
    expect(topics).to match_array(["Mikee", "Ady"])
  end

  it "saves the correct dates" do
    topics = subject.topics.map { |topic| topic[:date] }
    expect(topics).to match_array([Date.new(2023, 3, 27), Date.new(2023, 3, 28)])
  end
end
