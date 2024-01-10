require "./closures.rb"

RSpec.describe Closures do
  describe ".with_these_numbers" do
    context "when no block is given" do
      it "returns list of numbers" do
        result = Closures.with_these_numbers(1,2)
        expect(result).to match_array([1,2])
      end
    end

    context "when adding" do
      it "returns sum" do
        result = Closures.with_these_numbers(1,2) do |first, second|
          first + second
        end
        expect(result).to eq 3
      end
    end

    context "when subtracting" do
      it "returns sum" do
        result = Closures.with_these_numbers(7, 5) do |first, second|
          first - second
        end
        expect(result).to eq 2
      end
    end
  end

  describe ".map" do
    context "when no block is given" do
      let(:list) { [1,2,3] }

      it "returns the list as is" do
        result = Closures.map(list)
        expect(result).to match_array(list)
      end
    end

    context "when block is given" do
      let(:list) { [1,2,3] }

      it "returns updated list" do
        result = Closures.map(list) do |item|
          item * 2
        end

        expect(result).to match_array([2,4,6])
      end
    end
  end

  describe ".filter" do
    context "when no block is given" do
      let(:list) { [1,2,3] }

      it "returns the list as is" do
        result = Closures.filter(list)
        expect(result).to match_array(list)
      end
    end

    context "when filtering numbers" do
      let(:list) { [1,2,3] }

      it "returns filtered list" do
        result = Closures.filter(list) do |item|
          item.odd?
        end

        expect(result).to match_array([1,3])
      end
    end

    context "when filtering strings" do
      let(:list) { %w[apple banana orange strawberry] }

      it "returns filtered list" do
        result = Closures.filter(list) do |item|
          item.length == 5
        end

        expect(result).to match_array(["apple"])
      end
    end
  end
end
