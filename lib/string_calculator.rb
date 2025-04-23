
class NegativeNumberError < StandardError; end

class StringCalculator

    def add(str = "")
        return 0 if str.empty?

        begin
            delimeter, numbers = str.match(%r{//(.*)\n(.*)})&.captures

            numbers = if delimeter && numbers
                numbers.split(delimeter).map(&:to_i)
            else   
                str.split(/\n|,/).map(&:to_i)
            end

            raise StandardError.new("negative numbers not allowed #{numbers.select(&:negative?)}") if numbers.any?(&:negative?)
        rescue StandardError => e
            e.message
        end
        numbers.sum
    end
end