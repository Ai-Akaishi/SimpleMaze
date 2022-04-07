### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 壁のラインかどうかを更新
execute store result storage simple_maze: is_wall.x byte 1 unless data storage simple_maze: is_wall{x:true}

## 部屋の形を確認して生成
data modify storage simple_maze: room set from storage simple_maze: maze[-1][-1]
data remove storage simple_maze: maze[-1][-1]

## 部屋の形によって分岐
execute if data storage simple_maze: {room:"□"} if data storage simple_maze: is_wall{x:true,z:false} run fill ~ ~ ~-1.0 ~ ~3 ~1.0 minecraft:air
execute if data storage simple_maze: {room:"□"} if data storage simple_maze: is_wall{x:false,z:true} run fill ~-1.0 ~ ~ ~1.0 ~3 ~ minecraft:air

## 繰り返し処理
##                                                            #
execute if data storage simple_maze: maze[-1][-1] positioned ~2.0 ~ ~ run function simple_maze:5/build/x
