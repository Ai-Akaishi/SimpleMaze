### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage simple_maze: maze set from storage math: out

data remove storage simple_maze: is_wall
data modify storage simple_maze: is_first_z set value true
execute if data storage simple_maze: maze[0] run function simple_maze:4/build/z
