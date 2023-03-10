-- 基础信息
local base_info = {
	group_id = 199004188
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 188001, monster_id = 22050201, pos = { x = -339.238, y = 120.241, z = -739.316 }, rot = { x = 0.000, y = 351.211, z = 0.000 }, level = 20, drop_tag = "兽境猎犬", pose_id = 101, area_id = 400 },
	{ config_id = 188002, monster_id = 22050201, pos = { x = -340.098, y = 121.225, z = -720.792 }, rot = { x = 0.000, y = 235.769, z = 0.000 }, level = 20, drop_tag = "兽境猎犬", pose_id = 101, area_id = 400 }
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
		monsters = { 188001, 188002 },
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