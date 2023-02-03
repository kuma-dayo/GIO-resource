-- 基础信息
local base_info = {
	group_id = 133307146
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 146001, monster_id = 28060401, pos = { x = -2000.051, y = 170.116, z = 5443.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 27 },
	{ config_id = 146002, monster_id = 28060401, pos = { x = -1941.721, y = 163.749, z = 5407.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 27 },
	{ config_id = 146003, monster_id = 28060401, pos = { x = -1974.557, y = 167.422, z = 5427.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 27 },
	{ config_id = 146004, monster_id = 28060401, pos = { x = -2096.772, y = 174.870, z = 5337.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 27 },
	{ config_id = 146005, monster_id = 28060401, pos = { x = -2010.139, y = 151.587, z = 5306.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 27 },
	{ config_id = 146006, monster_id = 28060401, pos = { x = -2077.252, y = 160.435, z = 5297.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 27 },
	{ config_id = 146007, monster_id = 28060301, pos = { x = -2054.744, y = 208.185, z = 5456.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 121, area_id = 27 },
	{ config_id = 146008, monster_id = 28060301, pos = { x = -1939.818, y = 183.889, z = 5386.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 121, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 146001, 146002, 146003, 146004, 146005, 146006, 146007, 146008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================