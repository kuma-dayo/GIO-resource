--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 208002, monster_id = 25100201, pos = { x = -3220.249, y = 200.222, z = -3344.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "高阶武士", pose_id = 1, area_id = 12 }
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
		{ config_id = 208001, monster_id = 25100101, pos = { x = -3228.507, y = 205.479, z = -3379.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "高阶武士", pose_id = 1, area_id = 12 }
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
		monsters = { 208002 },
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