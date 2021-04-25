require './item'

class List
attr_accessor :label
attr_writer :items

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

def size
    @items.length  
end

def valid_index?(index)
    return true if (index <= (@items.size - 1)) && index >= 0
    false
end

def swap(index_1, index_2)
    return false if !self.valid_index?(index_1) || !self.valid_index?(index_2)
    @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
    true
end

def [](index)
    return nil if !self.valid_index?(index)
    @items[index]
end

def priority
    @items.first
end

def print
    
end


end