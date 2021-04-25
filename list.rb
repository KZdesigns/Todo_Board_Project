require './item'

class List
# print styles
LINE_WIDTH = 42
INDEX_COL_WIDTH = 5
ITEM_COL_WIDTH = 20
DEADLINE_COL_WIDTH = 10

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
    puts "-" * LINE_WIDTH
    puts " " * 16 + self.label.upcase
    puts "-" * LINE_WIDTH
    puts "#{'Index'.ljust(INDEX_COL_WIDTH)} | #{'Item'.ljust(ITEM_COL_WIDTH)} | #{'Deadline'.ljust(DEADLINE_COL_WIDTH)}"
    puts "-" * LINE_WIDTH
    @items.each_with_index do |item, i|
        puts "#{i.to_s.ljust(INDEX_COL_WIDTH)} | #{item.title.capitalize.ljust(ITEM_COL_WIDTH)} | #{item.deadline.ljust(DEADLINE_COL_WIDTH)}"
    end
    puts "-" * LINE_WIDTH
end

def print_full_item(index)
    item = self[index]
    return nil if !valid_index?(index)
    puts "-" * LINE_WIDTH
    puts "#{item.title.capitalize.ljust(LINE_WIDTH/2)}#{item.deadline.rjust(LINE_WIDTH/2)}"
    puts "#{item.description}"
    puts "-" * LINE_WIDTH
end

def up(index, amount=1)
    return false if !valid_index?(index)
    amount.times do
        break if index < 0 
        swap(index, index - 1)
        index = index - 1
    end

    true
end

def down(index, amount=1)
    return false if !valid_index?(index)
    amount.times do
        break if index < 0 
        swap(index, index + 1)
        index = index + 1
    end

    true
end

def sort_by_date!
    @items.sort_by! { |item| item.deadline }
end


end