### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## お部屋クローン
##                                                                      #                       #  #  #  #
execute unless data storage simple_maze: {is_first_x:true} positioned ~-3 ~ ~ run clone ~1 ~ ~ ~3 ~3 ~3 ~4 ~ ~
execute if data storage simple_maze: {is_first_x:true} run data remove storage simple_maze: is_first_x

## リセット時は２つ減らす
data remove storage simple_maze: maze[-1][-1]
data remove storage simple_maze: maze[-1][-1]

## 繰り返し処理
##                                                            #
execute if data storage simple_maze: maze[-1][-2] positioned ~3 ~ ~ run function simple_maze:4/reset/x
