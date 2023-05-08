gamemode adventure @s
clear @s
effect clear @s
tag @s add playing_bow
execute as @a[distance=..20,gamemode=adventure,scores={join_bow=1..},tag=playing_bow] run item replace entity @s hotbar.0 with paper{display: {Lore: ['[{"text":"持有這張紙代表您正在準備玩鏡射。","italic":false}]', '[{"text":"想要取消準備的話，丟棄這張紙。","italic":false}]'], Name: '[{"text":"準備遊玩","italic":false,"bold":true}]'}} 1
scoreboard players reset @s join_bow