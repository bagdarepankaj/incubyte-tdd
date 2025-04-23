require "string_calculator"

describe StringCalculator do
    describe '#add' do
        sc = StringCalculator.new
        context "when string is empty" do
            it 'return zero' do
                expect(sc.add).to eq(0)
            end
        end
    end
end