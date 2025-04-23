class StringCalculator

    def add(str = "")
        return 0 if str.empty?

        delimeter, numbers = str.match(%r{//(.*)\n(.*)})&.captures

        if delimeter && numbers
            numbers.split(delimeter).sum { |a| a.to_i }
        else   
            str.split(/\n|,/).sum { |a| a.to_i }
        end
    end
end