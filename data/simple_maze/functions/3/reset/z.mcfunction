### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 最初のお部屋をクローンしておく
##                                                                          #                   #  #  #      #
execute unless data storage simple_maze: {is_first_z:true} positioned ~ ~ ~-2 run clone ~ ~ ~1 ~2 ~2 ~2 ~ ~ ~3
execute if data storage simple_maze: {is_first_z:true} run data remove storage simple_maze: is_first_z

## 横方向のお部屋生成
data modify storage simple_maze: is_first_x set value true
execute if data storage simple_maze: maze[-1][-2] run function simple_maze:3/reset/x

## 繰り返し処理
data remove storage simple_maze: maze[-1]
data remove storage simple_maze: maze[-1]
##                                                            #
execute if data storage simple_maze: maze[-2] positioned ~ ~ ~2 run function simple_maze:3/reset/z
