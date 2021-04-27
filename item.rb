class Item
    attr_accessor :title, :description 
    attr_reader :deadline, :done

    def self.valid_date?(date_string)
       date_split = date_string.split("-") 
       parts = date_split.map(&:to_i)
       return false if date_split[0].length != 4
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
        @done = false
    end

    def deadline=(new_deadline)
        raise "The deadline is an invalid date" if !Item.valid_date?(new_deadline)
        @deadline = new_deadline
    end

    def toggle
        @done = !@done
    end

end



