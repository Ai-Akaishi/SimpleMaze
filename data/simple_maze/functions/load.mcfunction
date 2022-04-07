### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store success storage simple_maze: _ int 1 run function math:define
execute if data storage simple_maze: {_:0} run tellraw @a {"translate":"[Datapack Warning] \"Simple Maze\" depends on \"%1$s\", but \"%1$s\" is not found.\nMake sure \"%1$s\" is included in the Datapack folder and enabled.","color":"yellow","with":[{"text":"AiMath","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Ai-Akaishi/AiMath"}}]}
