-- 基础信息
local base_info = {
	group_id = 133217294
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	-- 清籁丸
	{ config_id = 294001, shape = RegionShape.CUBIC, size = { x = 35.000, y = 27.000, z = 78.000 }, pos = { x = -4432.898, y = 194.847, z = -3755.549 }, area_id = 14, vision_type_list = { 32130001 } },
	-- 清籁丸洞
	{ config_id = 294002, shape = RegionShape.CUBIC, size = { x = 100.000, y = 60.000, z = 100.000 }, pos = { x = -4400.234, y = 178.697, z = -3820.781 }, area_id = 14, vision_type_list = { 32130002 } },
	-- 清籁丸大船外围
	{ config_id = 294003, shape = RegionShape.SPHERE, radius = 280, pos = { x = -4386.796, y = 186.304, z = -3800.894 }, area_id = 14, vision_type_list = { 32130003 } },
	-- 雷音权现圈儿
	{ config_id = 294004, shape = RegionShape.SPHERE, radius = 150, pos = { x = -4709.458, y = 480.006, z = -4259.839 }, area_id = 14, vision_type_list = { 32220001 } }
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
		monsters = { },
		gadgets = { },
		regions = { 294001, 294002, 294003, 294004 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================