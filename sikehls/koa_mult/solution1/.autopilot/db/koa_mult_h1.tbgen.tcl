set moduleName koa_mult_h1
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {koa_mult_h1}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_V int 448 regular  }
	{ b_V int 448 unused  }
	{ c_V int 896 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_V", "interface" : "wire", "bitwidth" : 448, "direction" : "READONLY", "bitSlice":[{"low":0,"up":447,"cElement": [{"cName": "a.V","cData": "uint448","bit_use": { "low": 0,"up": 447},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "b_V", "interface" : "wire", "bitwidth" : 448, "direction" : "READONLY", "bitSlice":[{"low":0,"up":447,"cElement": [{"cName": "b.V","cData": "uint448","bit_use": { "low": 0,"up": 447},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "c_V", "interface" : "wire", "bitwidth" : 896, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":895,"cElement": [{"cName": "c.V","cData": "uint896","bit_use": { "low": 0,"up": 895},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_V sc_in sc_lv 448 signal 0 } 
	{ b_V sc_in sc_lv 448 signal 1 } 
	{ c_V sc_out sc_lv 896 signal 2 } 
	{ c_V_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_V", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "a_V", "role": "default" }} , 
 	{ "name": "b_V", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "b_V", "role": "default" }} , 
 	{ "name": "c_V", "direction": "out", "datatype": "sc_lv", "bitwidth":896, "type": "signal", "bundle":{"name": "c_V", "role": "default" }} , 
 	{ "name": "c_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "18", "35", "52", "53", "54"],
		"CDFG" : "koa_mult_h1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_2_fu_47"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_fu_52"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_1_fu_57"}],
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "bc_mult_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ta_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_mux_4bkb_U42", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_mul_6cud_U43", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_mul_6cud_U44", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_mul_6cud_U45", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_mul_6cud_U46", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_mux_4dEe_U47", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_add_3eOg_U48", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_mux_4dEe_U49", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_add_3fYi_U50", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_mux_4dEe_U51", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_add_4ibs_U52", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_mux_4dEe_U53", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_add_4ibs_U54", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_add_3hbi_U55", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_add_4ibs_U56", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_47.koa_mult_h1_add_4ibs_U57", "Parent" : "1"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52", "Parent" : "0", "Child" : ["19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "bc_mult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ta_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_mux_4bkb_U1", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_mul_6cud_U2", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_mul_6cud_U3", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_mul_6cud_U4", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_mul_6cud_U5", "Parent" : "18"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_mux_4dEe_U6", "Parent" : "18"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_add_3eOg_U7", "Parent" : "18"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_mux_4dEe_U8", "Parent" : "18"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_add_3fYi_U9", "Parent" : "18"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_mux_4dEe_U10", "Parent" : "18"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_add_4g8j_U11", "Parent" : "18"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_mux_4dEe_U12", "Parent" : "18"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_add_4g8j_U13", "Parent" : "18"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_add_3hbi_U14", "Parent" : "18"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_add_4g8j_U15", "Parent" : "18"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_52.koa_mult_h1_add_4g8j_U16", "Parent" : "18"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57", "Parent" : "0", "Child" : ["36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51"],
		"CDFG" : "bc_mult_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ta_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_mux_4bkb_U25", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_mul_6cud_U26", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_mul_6cud_U27", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_mul_6cud_U28", "Parent" : "35"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_mul_6cud_U29", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_mux_4dEe_U30", "Parent" : "35"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_add_3eOg_U31", "Parent" : "35"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_mux_4dEe_U32", "Parent" : "35"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_add_3fYi_U33", "Parent" : "35"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_mux_4dEe_U34", "Parent" : "35"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_add_4g8j_U35", "Parent" : "35"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_mux_4dEe_U36", "Parent" : "35"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_add_4g8j_U37", "Parent" : "35"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_add_3hbi_U38", "Parent" : "35"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_add_4g8j_U39", "Parent" : "35"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_57.koa_mult_h1_add_4g8j_U40", "Parent" : "35"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.koa_mult_h1_sub_4jbC_U60", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.koa_mult_h1_sub_4jbC_U61", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.koa_mult_h1_add_8kbM_U62", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	koa_mult_h1 {
		a_V {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead -1 FirstWrite -1}
		c_V {Type O LastRead -1 FirstWrite 4}}
	bc_mult_2 {
		ta_V {Type I LastRead 0 FirstWrite -1}}
	bc_mult {
		ta_V {Type I LastRead 0 FirstWrite -1}}
	bc_mult_1 {
		ta_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25", "Max" : "25"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_V { ap_none {  { a_V in_data 0 448 } } }
	b_V { ap_none {  { b_V in_data 0 448 } } }
	c_V { ap_vld {  { c_V out_data 1 896 }  { c_V_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
