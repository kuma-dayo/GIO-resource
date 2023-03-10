-- 基础信息
local base_info = {
	group_id = 133104456
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 456001, monster_id = 21010201, pos = { x = -27.932, y = 241.732, z = 676.435 }, rot = { x = 0.000, y = 286.319, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 456002, monster_id = 21010201, pos = { x = -26.242, y = 241.409, z = 678.717 }, rot = { x = 0.000, y = 264.640, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 456003, monster_id = 21010401, pos = { x = -27.326, y = 242.025, z = 680.945 }, rot = { x = 353.579, y = 240.030, z = 24.647 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 456004, gadget_id = 70211001, pos = { x = -23.113, y = 242.421, z = 672.768 }, rot = { x = 0.803, y = 75.728, z = 0.450 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
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
		monsters = { 456001, 456002, 456003 },
		gadgets = { 456004 },
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