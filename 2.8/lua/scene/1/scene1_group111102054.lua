-- 基础信息
local base_info = {
	group_id = 111102054
}

-- Trigger变量
local defs = {
	starter_worktop_id = 54004,
	final_stage = 3,
	gallery_id = 21200
}

-- DEFS_MISCS
local score = {
    checkpoint = 20,
    monster = 5,
}

local stage_berth_windzone = {
    [1] = {berth_num = 4, berth = {54085,54086,54087,54088}, windzone = {54089,54090,54091,54092}},
    [2] = {berth_num = 3, berth = {54093,54094,54095}, windzone = {54096,54097,54098}},
    [3] = {berth_num = 2, berth = {54099,54100}, windzone = {54101}},
}

local stage = 
{
    [1] = {monster_suites = {2},start_suites = {2}, tag = "Battle"},
    [2] = {monster_suites = {3},start_suites = {3}, tag = "Battle"},
    [3] = {monster_suites = {4,5},start_suites = {4}, tag = "Battle"},
}

local monster_suite_chain = 
{
	[4] = {5}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 54015, monster_id = 21011001, pos = { x = 1710.377, y = 214.355, z = -1810.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 54016, monster_id = 21011001, pos = { x = 1703.989, y = 214.355, z = -1811.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 54017, monster_id = 21011001, pos = { x = 1710.017, y = 214.355, z = -1804.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 54018, monster_id = 21011001, pos = { x = 1704.416, y = 214.355, z = -1805.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 54019, monster_id = 21010501, pos = { x = 1651.122, y = 214.356, z = -1807.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 54020, monster_id = 21010501, pos = { x = 1645.671, y = 214.356, z = -1807.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 54021, monster_id = 21010501, pos = { x = 1650.350, y = 214.356, z = -1801.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 54022, monster_id = 21010501, pos = { x = 1645.225, y = 214.356, z = -1802.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 54023, monster_id = 21010301, pos = { x = 1694.190, y = 201.689, z = -1809.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 54024, monster_id = 21010301, pos = { x = 1690.039, y = 201.689, z = -1809.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 54025, monster_id = 21010301, pos = { x = 1689.440, y = 201.689, z = -1803.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 54026, monster_id = 21010301, pos = { x = 1694.328, y = 201.689, z = -1803.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 54027, monster_id = 21010301, pos = { x = 1669.548, y = 201.689, z = -1809.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 54028, monster_id = 21010301, pos = { x = 1664.339, y = 201.689, z = -1810.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 54029, monster_id = 21010301, pos = { x = 1670.722, y = 201.689, z = -1803.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 54030, monster_id = 21010301, pos = { x = 1665.901, y = 201.689, z = -1803.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 54049, monster_id = 21020101, pos = { x = 1806.395, y = 201.141, z = -1944.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 54050, monster_id = 21020101, pos = { x = 1801.419, y = 201.141, z = -1939.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 54051, monster_id = 21020201, pos = { x = 1788.820, y = 210.857, z = -1955.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 54052, monster_id = 21020201, pos = { x = 1781.432, y = 210.857, z = -1953.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 54053, monster_id = 22010101, pos = { x = 1759.747, y = 220.948, z = -1973.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊法师" },
	{ config_id = 54054, monster_id = 21011301, pos = { x = 1766.047, y = 220.948, z = -1969.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 54055, monster_id = 21030101, pos = { x = 1747.388, y = 231.388, z = -1983.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 54056, monster_id = 21030101, pos = { x = 1743.382, y = 231.388, z = -1988.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 54057, monster_id = 21030601, pos = { x = 1743.673, y = 231.388, z = -1979.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 54058, monster_id = 21030601, pos = { x = 1739.980, y = 231.388, z = -1982.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘萨满" },
	{ config_id = 54059, monster_id = 21011301, pos = { x = 1763.167, y = 220.948, z = -1967.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 54060, monster_id = 21011301, pos = { x = 1759.750, y = 220.948, z = -1968.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 54084, monster_id = 21020801, pos = { x = 1943.132, y = 213.228, z = -1896.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王" },
	{ config_id = 54102, monster_id = 20010401, pos = { x = 1949.429, y = 213.071, z = -1894.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 54001, gadget_id = 70350256, pos = { x = 1687.143, y = 194.600, z = -1732.572 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54002, gadget_id = 70350256, pos = { x = 1687.143, y = 194.600, z = -1736.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54003, gadget_id = 70350256, pos = { x = 1687.143, y = 194.600, z = -1741.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54004, gadget_id = 70350250, pos = { x = 1684.747, y = 194.600, z = -1706.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54005, gadget_id = 70350256, pos = { x = 1677.679, y = 194.600, z = -1751.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54006, gadget_id = 70350256, pos = { x = 1677.679, y = 194.600, z = -1755.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54007, gadget_id = 70350256, pos = { x = 1677.679, y = 194.600, z = -1760.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54008, gadget_id = 70350256, pos = { x = 1686.910, y = 194.600, z = -1773.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54009, gadget_id = 70350256, pos = { x = 1686.910, y = 194.600, z = -1778.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54010, gadget_id = 70350256, pos = { x = 1686.910, y = 194.600, z = -1782.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54011, gadget_id = 70380312, pos = { x = 1706.743, y = 213.229, z = -1808.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54012, gadget_id = 70380312, pos = { x = 1648.390, y = 213.229, z = -1806.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54013, gadget_id = 70380312, pos = { x = 1690.236, y = 200.325, z = -1807.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54014, gadget_id = 70380312, pos = { x = 1665.650, y = 200.325, z = -1807.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54031, gadget_id = 70350256, pos = { x = 1694.268, y = 194.600, z = -1836.760 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54032, gadget_id = 70350256, pos = { x = 1697.104, y = 194.600, z = -1840.715 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54033, gadget_id = 70350256, pos = { x = 1700.391, y = 194.600, z = -1845.301 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54034, gadget_id = 70350256, pos = { x = 1702.779, y = 194.600, z = -1866.417 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54035, gadget_id = 70350256, pos = { x = 1705.615, y = 194.600, z = -1870.372 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54036, gadget_id = 70350256, pos = { x = 1708.902, y = 194.600, z = -1874.958 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54037, gadget_id = 70350256, pos = { x = 1726.185, y = 194.600, z = -1883.518 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54038, gadget_id = 70350256, pos = { x = 1729.021, y = 194.600, z = -1887.473 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54039, gadget_id = 70350256, pos = { x = 1732.308, y = 194.600, z = -1892.059 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54040, gadget_id = 70350256, pos = { x = 1737.575, y = 194.600, z = -1917.187 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54041, gadget_id = 70350256, pos = { x = 1740.411, y = 194.600, z = -1921.142 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54042, gadget_id = 70350256, pos = { x = 1743.698, y = 194.600, z = -1925.728 }, rot = { x = 0.000, y = 324.361, z = 0.000 }, level = 1 },
	{ config_id = 54043, gadget_id = 70350258, pos = { x = 1753.610, y = 194.600, z = -1932.504 }, rot = { x = 0.000, y = 324.565, z = 0.000 }, level = 1 },
	{ config_id = 54044, gadget_id = 70350258, pos = { x = 1760.771, y = 194.600, z = -1942.568 }, rot = { x = 0.000, y = 324.565, z = 0.000 }, level = 1 },
	{ config_id = 54045, gadget_id = 70380312, pos = { x = 1802.379, y = 198.896, z = -1940.560 }, rot = { x = 0.000, y = 54.744, z = 0.000 }, level = 1 },
	{ config_id = 54046, gadget_id = 70380312, pos = { x = 1783.556, y = 208.612, z = -1953.866 }, rot = { x = 0.000, y = 54.744, z = 0.000 }, level = 1 },
	{ config_id = 54047, gadget_id = 70380312, pos = { x = 1761.713, y = 218.702, z = -1968.562 }, rot = { x = 0.000, y = 54.744, z = 0.000 }, level = 1 },
	{ config_id = 54048, gadget_id = 70380312, pos = { x = 1742.890, y = 229.143, z = -1981.868 }, rot = { x = 0.000, y = 54.744, z = 0.000 }, level = 1 },
	{ config_id = 54061, gadget_id = 70350256, pos = { x = 1777.343, y = 194.600, z = -1983.854 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54062, gadget_id = 70350256, pos = { x = 1781.014, y = 194.600, z = -1981.801 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54063, gadget_id = 70350256, pos = { x = 1784.784, y = 194.600, z = -1979.692 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54064, gadget_id = 70350256, pos = { x = 1800.037, y = 194.600, z = -1984.815 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54065, gadget_id = 70350256, pos = { x = 1803.708, y = 194.600, z = -1982.762 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54066, gadget_id = 70350256, pos = { x = 1807.478, y = 194.600, z = -1980.653 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54067, gadget_id = 70350256, pos = { x = 1808.875, y = 194.600, z = -1966.864 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54068, gadget_id = 70350256, pos = { x = 1812.546, y = 194.600, z = -1964.811 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54069, gadget_id = 70350256, pos = { x = 1816.316, y = 194.600, z = -1962.702 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54070, gadget_id = 70350256, pos = { x = 1832.022, y = 194.600, z = -1966.916 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54071, gadget_id = 70350256, pos = { x = 1835.693, y = 194.600, z = -1964.863 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54072, gadget_id = 70350256, pos = { x = 1839.463, y = 194.600, z = -1962.754 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54073, gadget_id = 70350256, pos = { x = 1844.884, y = 194.600, z = -1944.002 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54074, gadget_id = 70350256, pos = { x = 1848.555, y = 194.600, z = -1941.949 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54075, gadget_id = 70350256, pos = { x = 1852.325, y = 194.600, z = -1939.840 }, rot = { x = 0.000, y = 60.779, z = 0.000 }, level = 1 },
	{ config_id = 54076, gadget_id = 70350258, pos = { x = 1874.375, y = 194.600, z = -1933.802 }, rot = { x = 0.000, y = 60.384, z = 0.000 }, level = 1 },
	{ config_id = 54077, gadget_id = 70350258, pos = { x = 1887.904, y = 194.600, z = -1926.112 }, rot = { x = 0.000, y = 60.384, z = 0.000 }, level = 1 },
	{ config_id = 54078, gadget_id = 70350258, pos = { x = 1898.583, y = 194.600, z = -1920.142 }, rot = { x = 0.000, y = 60.384, z = 0.000 }, level = 1 },
	{ config_id = 54079, gadget_id = 70350258, pos = { x = 1912.112, y = 194.600, z = -1912.452 }, rot = { x = 0.000, y = 60.384, z = 0.000 }, level = 1 },
	{ config_id = 54080, gadget_id = 70380312, pos = { x = 1933.751, y = 212.166, z = -1892.045 }, rot = { x = 0.000, y = 331.112, z = 0.000 }, level = 1 },
	{ config_id = 54081, gadget_id = 70380312, pos = { x = 1941.171, y = 212.166, z = -1904.817 }, rot = { x = 0.000, y = 331.112, z = 0.000 }, level = 1 },
	{ config_id = 54082, gadget_id = 70380312, pos = { x = 1946.879, y = 212.166, z = -1884.899 }, rot = { x = 0.000, y = 331.112, z = 0.000 }, level = 1 },
	{ config_id = 54083, gadget_id = 70380312, pos = { x = 1954.107, y = 212.166, z = -1897.613 }, rot = { x = 0.000, y = 331.112, z = 0.000 }, level = 1 },
	{ config_id = 54085, gadget_id = 70380230, pos = { x = 1707.181, y = 194.600, z = -1795.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54086, gadget_id = 70380230, pos = { x = 1691.152, y = 194.600, z = -1794.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54087, gadget_id = 70380230, pos = { x = 1648.353, y = 194.600, z = -1794.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54088, gadget_id = 70380230, pos = { x = 1664.382, y = 194.600, z = -1795.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54089, gadget_id = 70690029, pos = { x = 1706.993, y = 200.892, z = -1794.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54090, gadget_id = 70690029, pos = { x = 1690.945, y = 191.615, z = -1795.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54091, gadget_id = 70690029, pos = { x = 1648.151, y = 200.892, z = -1794.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54092, gadget_id = 70690029, pos = { x = 1666.605, y = 191.615, z = -1795.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54093, gadget_id = 70380230, pos = { x = 1776.857, y = 194.600, z = -1943.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54094, gadget_id = 70380230, pos = { x = 1753.736, y = 194.600, z = -1957.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54095, gadget_id = 70380230, pos = { x = 1735.156, y = 194.600, z = -1970.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54096, gadget_id = 70690029, pos = { x = 1777.287, y = 196.802, z = -1942.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54097, gadget_id = 70690029, pos = { x = 1753.428, y = 205.744, z = -1957.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54098, gadget_id = 70690011, pos = { x = 1736.363, y = 205.744, z = -1972.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54099, gadget_id = 70380230, pos = { x = 1917.871, y = 194.600, z = -1898.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54100, gadget_id = 70380230, pos = { x = 1925.611, y = 194.600, z = -1912.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 54101, gadget_id = 70690029, pos = { x = 1922.217, y = 198.898, z = -1906.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 54015, 54016, 54017, 54018, 54019, 54020, 54021, 54022, 54023, 54024, 54025, 54026, 54027, 54028, 54029, 54030 },
		gadgets = { 54001, 54002, 54003, 54005, 54006, 54007, 54008, 54009, 54010, 54011, 54012, 54013, 54014, 54085, 54086, 54087, 54088 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 54049, 54050, 54051, 54052, 54053, 54054, 54055, 54056, 54057, 54058, 54059, 54060 },
		gadgets = { 54031, 54032, 54033, 54034, 54035, 54036, 54037, 54038, 54039, 54040, 54041, 54042, 54043, 54044, 54045, 54046, 54047, 54048, 54093, 54094, 54095 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 54084 },
		gadgets = { 54061, 54062, 54063, 54064, 54065, 54066, 54067, 54068, 54069, 54070, 54071, 54072, 54073, 54074, 54075, 54076, 54077, 54078, 54079, 54080, 54081, 54082, 54083, 54099, 54100 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 54102 },
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

require "V2_8/SocialActivity_Common"
require "V2_8/SocialActivity_SailChallenge"