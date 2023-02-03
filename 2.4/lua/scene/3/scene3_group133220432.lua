--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 432005, monster_id = 28030102, pos = { x = -2489.262, y = 329.040, z = -4511.517 }, rot = { x = 358.713, y = 116.177, z = 11.229 }, level = 27, drop_tag = "鸟类", pose_id = 901, area_id = 11 }
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
		{ config_id = 432001, monster_id = 28030306, pos = { x = -2448.105, y = 315.376, z = -4426.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 11 },
		{ config_id = 432002, monster_id = 28030102, pos = { x = -2448.340, y = 314.160, z = -4467.638 }, rot = { x = 0.000, y = 115.683, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 11 },
		{ config_id = 432003, monster_id = 28030306, pos = { x = -2446.023, y = 315.369, z = -4425.670 }, rot = { x = 0.000, y = 307.094, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 11 }
	},
	gadgets = {
		{ config_id = 432004, gadget_id = 70210101, pos = { x = -2447.500, y = 315.798, z = -4424.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 11 }
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
		monsters = { 432005 },
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