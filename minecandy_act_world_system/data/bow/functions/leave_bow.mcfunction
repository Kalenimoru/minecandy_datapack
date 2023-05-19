tag @s remove playing_bow
effect clear @s
clear @s
gamemode survival @s
scoreboard players reset @s leave_bow
kill @e[distance=..20,nbt={Item: {id: "minecraft:paper", tag: {display: {Lore: ['[{"text":"持有這張紙代表您正在準備玩鏡射。","italic":false}]', '[{"text":"想要取消準備的話，丟棄這張紙。","italic":false}]'], Name: '[{"text":"準備遊玩","italic":false,"bold":true}]'}}, Count: 1b}}]