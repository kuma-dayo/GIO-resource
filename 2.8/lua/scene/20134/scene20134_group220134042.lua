-- 基础信息
local base_info = {
	group_id = 220134042
}

-- DEFS_MISCS
--贴在投影以所在Group
function EX_SetStarProjectorSGV(context, prev_context, config_id, light_index, is_on)

    ScriptLib.PrintContextLog(context, "## [StarProjector] EX_SetStarProjectorSGV called. light_index@"..light_index.. " is_on@".. is_on)

    ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_StarProjector_LightOn_"..light_index, is_on)

    return 0
end

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
	{ config_id = 42001, gadget_id = 70310331, pos = { x = 500.098, y = 613.455, z = -1591.462 }, rot = { x = 0.000, y = 182.154, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE }
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
		monsters = { },
		gadgets = { 42001 },
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