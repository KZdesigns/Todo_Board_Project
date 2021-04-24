# Todo_Board_Project
In this project, we'll be creating a Todo Board to track tasks that need to be completed. You'll be creating this entire project from scratch, no skeleton or specs!

We'll be writing two phases of this project, with the second expanding functionality with a refactor:

1. A board that manages a single todo list
2. A board that manages multiple todo lists with extended features for lists and items

### Version 1: One true list
Phase 1: One true list
Our first iteration of this project will have the TodoBoard only manage a single List which contains many Items.

### Version 2: So little time, so much todo
Phase 2: So little time, so much todo
In this phase of the project, we'll refactor our code to support the following features:

marking items as done
deleting items
managing multiple lists in a single board

## Gameplay - Video
- Version 1: 
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

### Version 2:

## Tech Used
- Ruby 3.0
- Git 2.30.0
- Github