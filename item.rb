class Item

    def self.valid_date?(date_string)
       parts = date_string.split("-").map(&:to_i)
       return false if parts.length != 3
       return false if parts[1] > 12
       return false if parts[2] > 31
       true
    end

    def initialize(title, deadline, description)
        raise "The deadline is an invalid date" if !Item.valid_date?(deadline)
        @title = title
        @deadline = deadline
        @description = description
    end



end





