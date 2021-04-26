# Todo_Board_Project
In this project, we'll be creating a Todo Board to track tasks that need to be completed. You'll be creating this entire project from scratch, no skeleton or specs!

We'll be writing two phases of this project, with the second expanding functionality with a refactor:

1. A board that manages a single todo list
2. A board that manages multiple todo lists with extended features for lists and items

# Commands
1. mktodo <title> <deadline> <optional description>
>-   makes a todo with the given information
2. up <index> <optional amount>
>- raises the todo up the list
3. down <index> <optional amount>
>- lowers the todo down the list
4. swap <index_1> <index_2>
>- swaps the position of todos
5. sort
>- sorts the todos by date
6. priority
>- prints the todo at the top of the list
7. print <optional index>
>- prints all todos if no index is provided
>- prints full information of the specified todo if an index is provided
8. quit
>- returns false

### Version 1: One true list
- [x] Phase 1: One true list 
Our first iteration of this project will have the TodoBoard only manage a single List which contains many Items.

### Version 2: So little time, so much todo
- [ ] Phase 2: So little time, so much todo
In this phase of the project, we'll refactor our code to support the following features:

marking items as done
deleting items
managing multiple lists in a single board

## Gameplay - Video
- Version 1: https://www.youtube.com/embed/wb86qFcJQVU"
- Version 2: 

## Example Code
```Ruby
def initialize(title, deadline, description)
    raise "The deadline is an invalid date" if !Item.valid_date?(deadline)
    @title = title
    @deadline = deadline
    @description = description
end
```
## Preview
### Version 1: 
![todo_board-gif](https://media.giphy.com/media/7CmCi8kmhoWLVEytzs/giphy.gif)
### Version 2:

## Tech Used
- Ruby 3.0
- Git 2.30.0
- Github