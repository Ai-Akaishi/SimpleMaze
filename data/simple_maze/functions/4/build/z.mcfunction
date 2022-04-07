### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 壁のラインかどうかを更新
execute store result storage simple_maze: is_wall.z byte 1 unless data storage simple_maze: is_wall{z:true}

## 横方向の壁の判定
data modify storage simple_maze: is_first_x set value true
data remove storage simple_maze: is_wall.x
execute if data storage simple_maze: maze[-1][-1] run function simple_maze:4/build/x

## 繰り返し処理
data remove storage simple_maze: maze[-1]
##                                                            #
execute if data storage simple_maze: maze[-1] positioned ~ ~ ~1.5 run function simple_maze:4/build/z
