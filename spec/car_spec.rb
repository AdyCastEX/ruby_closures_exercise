require "./car.rb"

RSpec.describe Car do
  let(:color) { "Red" }
  let(:plate_number) { "ABC 123" }
  let(:manufacturer) { "Toyota" }

  context "when only args is provided" do
    subject do
      described_class.new(color: color,
                          plate_number: plate_number,
                          manufacturer: manufacturer)
    end

    it "saves correct color" do
      expect(subject.color).to eq color
    end

    it "saves correct plate_number" do
      expect(subject.plate_number).to eq plate_number
    end

    it "saves correct manufacturer" do
      expect(subject.manufacturer).to eq manufacturer
    end
  end

  context "when only block is provided" do
    subject do
      described_class.new do |c|
        c.color = color
        c.plate_number = plate_number
        c.manufacturer =  manufacturer
      end
    end

    it "saves correct color" do
      expect(subject.color).to eq color
    end

    it "saves correct plate_number" do
      expect(subject.plate_number).to eq plate_number
    end

    it "saves correct manufacturer" do
      expect(subject.manufacturer).to eq manufacturer
    end
  end

  context "when both are provided" do
    let(:block_manufacturer) { "Honda" }

    subject do
      described_class.new(color: color, manufacturer: manufacturer) do |c|
        c.plate_number = plate_number
        c.manufacturer =  block_manufacturer
      end
    end

    it "saves correct color from args" do
      expect(subject.color).to eq color
    end

    it "saves correct plate_number from block" do
      expect(subject.plate_number).to eq plate_number
    end

    it "saves correct manufacturer from block" do
      expect(subject.manufacturer).to eq block_manufacturer
    end
  end
end
