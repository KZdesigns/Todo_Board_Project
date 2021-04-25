require './item'

class List
attr_accessor :label

def initialize(label)
    @label = label
    @items = []
end

def add_item(title, deadline, description="")
    return false if !Item.valid_date?(deadline)
    new_item = Item.new(title, deadline, description)
    @items << new_item
    true
end

end