-- 基础信息
local base_info = {
	group_id = 133303179
}

-- Trigger变量
local defs = {
	group_id = 133303179
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 179004, monster_id = 26090801, pos = { x = -1563.582, y = 126.992, z = 3339.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 179005, monster_id = 26090801, pos = { x = -1560.734, y = 126.926, z = 3341.504 }, rot = { x = 0.000, y = 290.066, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 179006, monster_id = 26090401, pos = { x = -1567.657, y = 126.636, z = 3341.485 }, rot = { x = 0.000, y = 350.981, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 179007, monster_id = 26090401, pos = { x = -1564.703, y = 126.326, z = 3346.019 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 179008, monster_id = 26090801, pos = { x = -1563.582, y = 126.992, z = 3339.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 179009, monster_id = 26090801, pos = { x = -1560.734, y = 126.926, z = 3341.504 }, rot = { x = 0.000, y = 290.066, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 179010, monster_id = 26090401, pos = { x = -1567.657, y = 126.636, z = 3341.485 }, rot = { x = 0.000, y = 350.981, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 23 },
	{ config_id = 179011, monster_id = 26120301, pos = { x = -1564.703, y = 126.326, z = 3346.019 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 102, area_id = 23 }
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
	{ config_id = 1179001, name = "GROUP_LOAD_179001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_179001", trigger_count = 0 },
	{ config_id = 1179002, name = "HUNTING_FINISH_FINAL_179002", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_179002" }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 179003, pos = { x = -1564.602, y = 126.611, z = 3342.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 23 }
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
		triggers = { "GROUP_LOAD_179001", "HUNTING_FINISH_FINAL_179002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 草飞行蕈兽-草元素龙卷,
		monsters = { 179004, 179005, 179006, 179007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 冰飞行蕈兽-双子,
		monsters = { 179008, 179009, 179010, 179011 },
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
function action_EVENT_GROUP_LOAD_179001(context, evt)
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
	            ScriptLib.AddExtraGroupSuite(context, 133303179, suite_id)
	        end
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_179002(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = defs.group_id, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end