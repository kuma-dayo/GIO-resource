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
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 298001, monster_id = 20060201, pos = { x = -4474.129, y = 236.440, z = -3949.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 },
		{ config_id = 298002, monster_id = 20060201, pos = { x = -4471.937, y = 236.620, z = -3948.287 }, rot = { x = 0.000, y = 283.328, z = 0.000 }, level = 30, drop_tag = "飘浮灵", disableWander = true, pose_id = 101, area_id = 14 },
		{ config_id = 298003, monster_id = 20060301, pos = { x = -4476.268, y = 235.666, z = -3944.974 }, rot = { x = 0.000, y = 155.044, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 }
	}
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