say "嗨"
execute if entity @a[tag=playing_bow] run schedule clear test0428:test
execute unless entity @a[tag=playing_bow] run schedule function test0428:test 1s append
