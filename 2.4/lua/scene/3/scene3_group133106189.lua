--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 189001, monster_id = 28030401, pos = { x = -1004.436, y = 256.715, z = 1101.230 }, rot = { x = 353.550, y = 76.242, z = 352.461 }, level = 32, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 189002, monster_id = 28030401, pos = { x = -1006.733, y = 255.266, z = 1097.530 }, rot = { x = 351.051, y = 0.904, z = 4.274 }, level = 32, drop_tag = "鸟类", area_id = 8 }
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
		monsters = { 189001, 189002 },
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