-- 基础信息
local base_info = {
	group_id = 133301214
}

-- Trigger变量
local defs = {
	group_id = 133301214
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
}

-- 触发器
triggers = {
	{ config_id = 1214001, name = "GROUP_LOAD_214001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_214001", trigger_count = 0 },
	{ config_id = 1214002, name = "HUNTING_FINISH_FINAL_214002", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_214002" }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 214003, pos = { x = -547.598, y = 226.834, z = 3256.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 22 }
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
		regions = { },
		triggers = { "GROUP_LOAD_214001", "HUNTING_FINISH_FINAL_214002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
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

-- 触发操作
function action_EVENT_GROUP_LOAD_214001(context, evt)
	-- 初始化table
	    local suite_table = {}
	
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	        return -1
	    end
	
	-- 根据HuntingData表的配置来激活对应的suite
	    if 0~= ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context) then
	        suite_table = ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context)
	        for i,suite_id in ipairs (suite_table) do
	            ScriptLib.AddExtraGroupSuite(context, 133301214, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_214002(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = defs.group_id, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end