-- 基础信息
local base_info = {
	group_id = 133007037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 75, monster_id = 21010901, pos = { x = 2736.021, y = 234.710, z = 217.412 }, rot = { x = 0.000, y = 151.099, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 4 },
	{ config_id = 76, monster_id = 21010901, pos = { x = 2739.075, y = 234.710, z = 220.279 }, rot = { x = 0.000, y = 165.754, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 4 }
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
	rand_suite = true
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
		monsters = { 75, 76 },
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