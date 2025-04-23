require "string_calculator"

describe StringCalculator do
    describe '#add' do
        sc = StringCalculator.new

        context "when string is empty" do
            it 'return zero' do
                expect(sc.add).to eq(0)
            end
        end

        context "when string is not empty" do
            context "having 1 number" do
                result = sc.add("3")
                it 'returns the number' do
                    expect(result).to eq(3)
                end
            end

            context "having multiple numbers seperated by commas" do
                result = sc.add("1, 2, 3, 4, 5")
                it "returns sum of all numbers" do
                    expect(result).to eq(15)
                end
            end

            context "accepting new line character between numbers" do
                result = sc.add("1, 2\n3, 4")
                it "returns sum of all numbers" do
                    expect(result).to eq(10)
                end
            end

            context "accepting different delimiter" do
                result = sc.add("//:\n 1: 2: 3")
                it "returns sum of all numbers" do
                    expect(result).to eq(6)
                end
            end

            context "when numbers contained are negative" do
                result = sc.add("//:\n 1: 2: 3: -4:-5")
                it "returns sum of all numbers" do
                    expect do
                        raise StandardError, "negative numbers not allowed [-4, -5]"
                    end.to raise_error(StandardError) { |error| expect(error.message).to eq "negative numbers not allowed [-4, -5]" }
                end
            end
        end
    end
end