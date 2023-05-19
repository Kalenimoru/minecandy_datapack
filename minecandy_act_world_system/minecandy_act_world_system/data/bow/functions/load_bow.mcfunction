scoreboard objectives add join_bow minecraft.custom:minecraft.bell_ring

scoreboard objectives add leave_bow minecraft.dropped:minecraft.paper

scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game

scoreboard objectives add bow_team_alive_count dummy

team add bow_red {"text":"鏡射紅隊","bold":true,"color":"red","italic":false}
team modify bow_red friendlyFire false
team modify bow_red collisionRule never
team modify bow_red prefix {"text":"鏡射紅隊","bold":true,"color":"red","italic":false}

team add bow_blue {"text":"鏡射藍隊","bold":true,"color":"blue","italic":false}
team modify bow_blue friendlyFire false
team modify bow_blue collisionRule never
team modify bow_blue prefix {"text":"鏡射藍隊","bold":true,"color":"blue","italic":false}