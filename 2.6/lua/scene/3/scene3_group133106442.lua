-- 基础信息
local base_info = {
	group_id = 133106442
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
	{ config_id = 442001, gadget_id = 70290395, pos = { x = -471.918, y = 135.504, z = 1878.792 }, rot = { x = 0.000, y = 139.265, z = 348.918 }, level = 36, area_id = 19 },
	{ config_id = 442002, gadget_id = 70290323, pos = { x = -469.274, y = 139.577, z = 1882.608 }, rot = { x = 356.003, y = 359.056, z = 26.567 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 442003, gadget_id = 70290324, pos = { x = -471.731, y = 138.490, z = 1882.718 }, rot = { x = 349.853, y = 358.447, z = 2.025 }, level = 36, persistent = true, area_id = 19 },
	{ config_id = 442004, gadget_id = 70690013, pos = { x = -478.183, y = 127.279, z = 1911.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 442006, gadget_id = 70290200, pos = { x = -478.408, y = 145.299, z = 1910.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 442009, gadget_id = 70211131, pos = { x = -470.389, y = 139.142, z = 1883.232 }, rot = { x = 353.324, y = 358.788, z = 20.557 }, level = 26, drop_tag = "解谜超级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
	{ config_id = 442005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -479.435, y = 146.257, z = 1911.423 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1442005, name = "ENTER_REGION_442005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_442005" }
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
		gadgets = { 442001, 442004, 442006, 442009 },
		regions = { 442005 },
		triggers = { "ENTER_REGION_442005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 442002, 442003 },
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

-- 触发操作
function action_EVENT_ENTER_REGION_442005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106442, 2)
	
	return 0
end