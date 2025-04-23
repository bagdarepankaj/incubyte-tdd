class StringCalculator

    def add(str = "")
        return 0 if str.empty?

        str.split(",").sum { |a| a.to_i }
    end
end