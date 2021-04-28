# Todo_Board_Project
In this project, we'll be creating a Todo Board to track tasks that need to be completed.

We'll be writing two phases of this project, with the second expanding functionality with a refactor:

1. A board that manages a single todo list
2. A board that manages multiple todo lists with extended features for lists and items

# Commands
1. mklist <new_list_label>
- > make a new list with the given label
2. ls
- > print the labels of all lists
3. showall
- > print all lists
4. mktodo <list_label> <item_title> <item_deadline> <optional_item_description>
- > add a new item to the specified list with the given information
5. toggle <list_label> <item_index>
- > toggle "done" for the specified item on the given list
6. rm <list_label> <item_index>
- > remove the specified item on the given list
7. purge <list_label>
- > remove all "done" items on the given list
8. up <list_label> <item_index> <optional_amount>
- > move the specified item higher on the given list
9. down <list_label> <item_index> <optional_amount>
- > move the specified item higher on the given list
10. swap <list_label> <item_index_1> <item_index_2>
- > swap the positions of the specified items on the given list
11. sort <list_label>
- > sort the given list by deadline
12. priority <list_label>
- > print the all information for the item at the top of the given list
13. print <list_label> <optional_index>
- > print all items of the given list if index is not provided
- >print the specific item of the given list if index is provided
14. quit

### Version 1: One true list
- [x] Phase 1: One true list 
Our first iteration of this project will have the TodoBoard only manage a single List which contains many Items.

### Version 2: So little time, so much todo
- [x] Phase 2: So little time, so much todo
In this phase of the project, we'll refactor our code to support the following features:

marking items as done
deleting items
managing multiple lists in a single board

## Gameplay - Video
- Version 1: https://www.youtube.com/embed/wb86qFcJQVU"
- Version 2: https://www.youtube.com/embed/zXAnRmPj9_c

## Example Code
```Ruby
    def get_command
        print "\nEnter a command: "
        cmd, target, *args = gets.chomp.split(' ')

        case cmd
        when 'showall'
            @lists.each_value(&:print)
        when 'ls'
            @lists.keys.each { |label| puts ' ' + label }
        when 'mklist'
            @lists[target] = List.new(target)
        when 'mktodo'
            @lists[target].add_item(*args)
        when 'up'
            @lists[target].up(*args.map(&:to_i))
        when 'down'
            @lists[target].down(*args.map(&:to_i))
        when 'swap'
            @lists[target].swap(*args.map(&:to_i))
        when 'sort'
            @lists[target].sort_by_date!
        when 'priority'
            @lists[target].print_priority
        when 'toggle'
            @lists[target].toggle_item(args[0].to_i)
        when 'rm'
            @lists[target].remove_item(args[0].to_i)
        when 'purge'
            @lists[target].purge
        when 'print'
            if args.empty?
                @lists[target].print
            else
                @lists[target].print_full_item(args[0].to_i)
            end
        when 'quit'
            return false
        else
            print "Sorry, that command is not recognized."
        end

        true
    end
```
## Preview
### Version 1: 
![todo_board-gif](https://media.giphy.com/media/7CmCi8kmhoWLVEytzs/giphy.gif)
### Version 2:
![todo_board-gif](https://media.giphy.com/media/gevEVgDW7grWMS8gQ8/giphy.gif)

## Tech Used
- Ruby 3.0
- Git 2.30.0
- Github