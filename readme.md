# READ ME

## Prompt:

Test access: https://gist.github.com/adrianob/acf5125fe071963f9f2f62234c90f94a
Instructions:
Given a n*n matrix of zeros and ones, return an array [a,b] where "a" is the number of 1 groups and "b" is the number of 0 groups.
A group is defined by adjacent(horizontally and/or vertically, but not diagonally) numbers of the same value.
Some examples are given below:

```
input = [
  [1, 0, 1, 1],
  [0, 1, 0, 0],
  [1, 0, 1, 1],
  [1, 0, 0, 0]
]

output = [5, 4]

input = [
  [0, 0, 1, 1],
  [0, 0, 1, 0],
  [1, 0, 0, 1],
  [1, 1, 1, 0]
]
output = [3, 3]

input = [
  [1, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [1, 1, 1, 1]
]

output = [3, 1]
```

## Resolution `#group_count`

The only concern of each element in the collection is to know if they are part of a group or if they are starting a new group, in which case they must increase the group count for their value. Due to the direction the matrixs is traversed, the quickest way to find out if the Nth element belongs to a group is checking the value of the element 'above' and 'behind' itself. If any of these two match, the Nth element is part of a group; otherwise a connection through a forward element must be explored. This is achieved by the recursive `j_connect?` method, named after the shape it creates if one were to trace its direction in a 2D matrix. This method checks if the 'forward' or 'bottom' element is connected to an already-counted group, or an element that would fail all checks and initiate a group itself. 

## Running the script.

`#group_count` is a class method of the BinaryMatrix class, available by importing the file binary_matrix.rb. Simple tests with the example cases provided and a few extra can be found in the file `binary_matrix_spec.rb`. To execute run `ruby binary_matrix_spec.rb` if the console where this repository has been cloned.

## A note:

That a group can consist of only one element is not clear from the instructions, but it's the only way in which the prompt and the examples are consistent. Including this in the test prompt would help clear out confusion. 


