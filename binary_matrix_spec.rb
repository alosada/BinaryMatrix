require './binary_matrix.rb'

print '#group_count => case 1 ok? '
input = [
  [1,0],
  [0,0]
]

p BinaryMatrix.group_count(input) == [1, 1]

print '#group_count => case 2 ok? '
input = [
  [1, 0, 1, 1],
  [0, 1, 0, 0],
  [1, 0, 1, 1],
  [1, 0, 0, 0]]

p BinaryMatrix.group_count(input) == [5, 4]

print '#group_count => case 3 ok? '
input = [
  [0, 0, 1, 1],
  [0, 0, 1, 0],
  [1, 0, 0, 1],
  [1, 1, 1, 0]
]

p BinaryMatrix.group_count(input) == [3, 3]

print '#group_count => case 4 ok? '
input = [
  [1, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [1, 1, 1, 1]
]

p BinaryMatrix.group_count(input) == [3, 1]

print '#group_count => case 5 ok? '
input = [
  [1, 0, 1, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [1, 1, 1, 1]
]

p BinaryMatrix.group_count(input) == [4, 2]

print '#group_count => case 6 ok? '
input = [
  [1, 0, 1, 0, 0],
  [0, 1, 0, 0, 0],
  [0, 0, 0, 0, 1],
  [1, 1, 1, 1, 1]
]

p BinaryMatrix.group_count(input) == [4, 2]

print '#group_count => case 7 ok? '
input = [
  [1, 0, 1, 0, 0],
  [0, 1, 0, 0, 0],
  [0, 0, 0, 1, 0],
  [1, 1, 1, 1, 1]
]

p BinaryMatrix.group_count(input) == [4, 2]

print '#group_count => case 8 ok? '
input = [
  [1, 0, 1, 1, 1],
  [1, 0, 0, 0, 1],
  [1, 0, 0, 0, 1],
  [1, 1, 1, 1, 1]
]

p BinaryMatrix.group_count(input) == [1, 1]

print '#group_count => case 9 ok? '
input = [
  [1, 0, 1, 0, 1],
  [1, 0, 1, 0, 1],
  [1, 0, 0, 0, 1],
  [1, 1, 1, 1, 1]
]

p BinaryMatrix.group_count(input) == [2, 1]

print '#group_count => case 10 ok? '
input = [
  [1, 0, 1, 0, 1],
  [1, 0, 1, 1, 1],
  [1, 0, 0, 0, 1],
  [1, 1, 1, 1, 1]
]

p BinaryMatrix.group_count(input) == [1, 2]