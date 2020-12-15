set moduleName xDBL
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
set C_modelName {xDBL}
set C_modelType { void 0 }
set C_modelArgList {
	{ P_X_V int 448 regular {array 2 { 1 1 } 1 1 }  }
	{ P_Z_V int 448 regular {array 2 { 1 1 } 1 1 }  }
	{ Q_X_V int 448 regular {array 2 { 0 0 } 0 1 }  }
	{ Q_Z_V int 448 regular {array 2 { 0 0 } 0 1 }  }
	{ A24plus_V int 448 regular {array 2 { 1 3 } 1 1 }  }
	{ C24_V int 448 regular {array 2 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "P_X_V", "interface" : "memory", "bitwidth" : 448, "direction" : "READONLY", "bitSlice":[{"low":0,"up":447,"cElement": [{"cName": "P.X.V","cData": "uint448","bit_use": { "low": 0,"up": 447},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "P_Z_V", "interface" : "memory", "bitwidth" : 448, "direction" : "READONLY", "bitSlice":[{"low":0,"up":447,"cElement": [{"cName": "P.Z.V","cData": "uint448","bit_use": { "low": 0,"up": 447},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "Q_X_V", "interface" : "memory", "bitwidth" : 448, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":447,"cElement": [{"cName": "Q.X.V","cData": "uint448","bit_use": { "low": 0,"up": 447},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "Q_Z_V", "interface" : "memory", "bitwidth" : 448, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":447,"cElement": [{"cName": "Q.Z.V","cData": "uint448","bit_use": { "low": 0,"up": 447},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "A24plus_V", "interface" : "memory", "bitwidth" : 448, "direction" : "READONLY", "bitSlice":[{"low":0,"up":447,"cElement": [{"cName": "A24plus.V","cData": "uint448","bit_use": { "low": 0,"up": 447},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "C24_V", "interface" : "memory", "bitwidth" : 448, "direction" : "READONLY", "bitSlice":[{"low":0,"up":447,"cElement": [{"cName": "C24.V","cData": "uint448","bit_use": { "low": 0,"up": 447},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ P_X_V_address0 sc_out sc_lv 1 signal 0 } 
	{ P_X_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ P_X_V_q0 sc_in sc_lv 448 signal 0 } 
	{ P_X_V_address1 sc_out sc_lv 1 signal 0 } 
	{ P_X_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ P_X_V_q1 sc_in sc_lv 448 signal 0 } 
	{ P_Z_V_address0 sc_out sc_lv 1 signal 1 } 
	{ P_Z_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ P_Z_V_q0 sc_in sc_lv 448 signal 1 } 
	{ P_Z_V_address1 sc_out sc_lv 1 signal 1 } 
	{ P_Z_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ P_Z_V_q1 sc_in sc_lv 448 signal 1 } 
	{ Q_X_V_address0 sc_out sc_lv 1 signal 2 } 
	{ Q_X_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ Q_X_V_we0 sc_out sc_logic 1 signal 2 } 
	{ Q_X_V_d0 sc_out sc_lv 448 signal 2 } 
	{ Q_X_V_address1 sc_out sc_lv 1 signal 2 } 
	{ Q_X_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ Q_X_V_we1 sc_out sc_logic 1 signal 2 } 
	{ Q_X_V_d1 sc_out sc_lv 448 signal 2 } 
	{ Q_Z_V_address0 sc_out sc_lv 1 signal 3 } 
	{ Q_Z_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ Q_Z_V_we0 sc_out sc_logic 1 signal 3 } 
	{ Q_Z_V_d0 sc_out sc_lv 448 signal 3 } 
	{ Q_Z_V_address1 sc_out sc_lv 1 signal 3 } 
	{ Q_Z_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ Q_Z_V_we1 sc_out sc_logic 1 signal 3 } 
	{ Q_Z_V_d1 sc_out sc_lv 448 signal 3 } 
	{ A24plus_V_address0 sc_out sc_lv 1 signal 4 } 
	{ A24plus_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ A24plus_V_q0 sc_in sc_lv 448 signal 4 } 
	{ C24_V_address0 sc_out sc_lv 1 signal 5 } 
	{ C24_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ C24_V_q0 sc_in sc_lv 448 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "P_X_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P_X_V", "role": "address0" }} , 
 	{ "name": "P_X_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_X_V", "role": "ce0" }} , 
 	{ "name": "P_X_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_X_V", "role": "q0" }} , 
 	{ "name": "P_X_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P_X_V", "role": "address1" }} , 
 	{ "name": "P_X_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_X_V", "role": "ce1" }} , 
 	{ "name": "P_X_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_X_V", "role": "q1" }} , 
 	{ "name": "P_Z_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P_Z_V", "role": "address0" }} , 
 	{ "name": "P_Z_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_Z_V", "role": "ce0" }} , 
 	{ "name": "P_Z_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_Z_V", "role": "q0" }} , 
 	{ "name": "P_Z_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P_Z_V", "role": "address1" }} , 
 	{ "name": "P_Z_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_Z_V", "role": "ce1" }} , 
 	{ "name": "P_Z_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_Z_V", "role": "q1" }} , 
 	{ "name": "Q_X_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_V", "role": "address0" }} , 
 	{ "name": "Q_X_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_V", "role": "ce0" }} , 
 	{ "name": "Q_X_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_V", "role": "we0" }} , 
 	{ "name": "Q_X_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "Q_X_V", "role": "d0" }} , 
 	{ "name": "Q_X_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_V", "role": "address1" }} , 
 	{ "name": "Q_X_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_V", "role": "ce1" }} , 
 	{ "name": "Q_X_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_X_V", "role": "we1" }} , 
 	{ "name": "Q_X_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "Q_X_V", "role": "d1" }} , 
 	{ "name": "Q_Z_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_V", "role": "address0" }} , 
 	{ "name": "Q_Z_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_V", "role": "ce0" }} , 
 	{ "name": "Q_Z_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_V", "role": "we0" }} , 
 	{ "name": "Q_Z_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "Q_Z_V", "role": "d0" }} , 
 	{ "name": "Q_Z_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_V", "role": "address1" }} , 
 	{ "name": "Q_Z_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_V", "role": "ce1" }} , 
 	{ "name": "Q_Z_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Q_Z_V", "role": "we1" }} , 
 	{ "name": "Q_Z_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "Q_Z_V", "role": "d1" }} , 
 	{ "name": "A24plus_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A24plus_V", "role": "address0" }} , 
 	{ "name": "A24plus_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A24plus_V", "role": "ce0" }} , 
 	{ "name": "A24plus_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "A24plus_V", "role": "q0" }} , 
 	{ "name": "C24_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_V", "role": "address0" }} , 
 	{ "name": "C24_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C24_V", "role": "ce0" }} , 
 	{ "name": "C24_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "C24_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "31", "61", "92", "123", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182"],
		"CDFG" : "xDBL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "589", "EstimateLatencyMax" : "589",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_202"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_202"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_202"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_202"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_202"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_202"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_202"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_202"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_203"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_203"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_203"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_203"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_203"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_203"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_203"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_203"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_292"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_292"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_292"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_292"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_292"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_298"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_298"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_298"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_298"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_303"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_303"}],
		"Port" : [
			{"Name" : "P_X_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "P_Z_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Q_X_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Q_Z_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A24plus_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C24_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "mp_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_448_fu_20"}],
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "bc_mult_448",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mux_73_64_1_1_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mul_64s_64s_cud_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_451ns_45dEe_U10", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U11", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_515ns_51eOg_U12", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U13", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_579ns_57fYi_U14", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U15", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_643ns_64g8j_U16", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U17", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_707ns_70hbi_U18", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U19", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_771ns_77ibs_U20", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U21", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_835ns_83jbC_U22", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_579ns_57fYi_U23", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_707ns_70hbi_U24", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_835ns_83jbC_U25", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_579ns_57fYi_U26", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_835ns_83jbC_U27", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_202.grp_bc_mult_448_fu_20.xDBL_add_835ns_83jbC_U28", "Parent" : "2"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "mp_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_448_fu_20"}],
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20", "Parent" : "31", "Child" : ["33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "bc_mult_448",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mux_73_64_1_1_U1", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U2", "Parent" : "32"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U3", "Parent" : "32"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U4", "Parent" : "32"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U5", "Parent" : "32"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U6", "Parent" : "32"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mul_64ns_64nbkb_U7", "Parent" : "32"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mul_64s_64s_cud_U8", "Parent" : "32"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U9", "Parent" : "32"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_451ns_45dEe_U10", "Parent" : "32"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U11", "Parent" : "32"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_515ns_51eOg_U12", "Parent" : "32"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U13", "Parent" : "32"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_579ns_57fYi_U14", "Parent" : "32"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U15", "Parent" : "32"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_643ns_64g8j_U16", "Parent" : "32"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U17", "Parent" : "32"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_707ns_70hbi_U18", "Parent" : "32"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U19", "Parent" : "32"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_771ns_77ibs_U20", "Parent" : "32"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_mux_73_448_1_1_U21", "Parent" : "32"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_835ns_83jbC_U22", "Parent" : "32"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_579ns_57fYi_U23", "Parent" : "32"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_707ns_70hbi_U24", "Parent" : "32"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_835ns_83jbC_U25", "Parent" : "32"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_579ns_57fYi_U26", "Parent" : "32"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_835ns_83jbC_U27", "Parent" : "32"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_203.grp_bc_mult_448_fu_20.xDBL_add_835ns_83jbC_U28", "Parent" : "32"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292", "Parent" : "0", "Child" : ["62", "91"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_448_fu_30"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_448_fu_30"}],
		"Port" : [
			{"Name" : "ma_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30", "Parent" : "61", "Child" : ["63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90"],
		"CDFG" : "bc_mult_448",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mux_73_64_1_1_U1", "Parent" : "62"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U2", "Parent" : "62"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U3", "Parent" : "62"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U4", "Parent" : "62"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U5", "Parent" : "62"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U6", "Parent" : "62"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U7", "Parent" : "62"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mul_64s_64s_cud_U8", "Parent" : "62"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U9", "Parent" : "62"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_451ns_45dEe_U10", "Parent" : "62"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U11", "Parent" : "62"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_515ns_51eOg_U12", "Parent" : "62"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U13", "Parent" : "62"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_579ns_57fYi_U14", "Parent" : "62"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U15", "Parent" : "62"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_643ns_64g8j_U16", "Parent" : "62"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U17", "Parent" : "62"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_707ns_70hbi_U18", "Parent" : "62"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U19", "Parent" : "62"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_771ns_77ibs_U20", "Parent" : "62"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U21", "Parent" : "62"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U22", "Parent" : "62"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_579ns_57fYi_U23", "Parent" : "62"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_707ns_70hbi_U24", "Parent" : "62"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U25", "Parent" : "62"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_579ns_57fYi_U26", "Parent" : "62"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U27", "Parent" : "62"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U28", "Parent" : "62"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_292.xDBL_add_837ns_83kbM_U44", "Parent" : "61"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298", "Parent" : "0", "Child" : ["93", "122"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_448_fu_30"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_448_fu_30"}],
		"Port" : [
			{"Name" : "ma_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30", "Parent" : "92", "Child" : ["94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121"],
		"CDFG" : "bc_mult_448",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mux_73_64_1_1_U1", "Parent" : "93"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U2", "Parent" : "93"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U3", "Parent" : "93"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U4", "Parent" : "93"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U5", "Parent" : "93"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U6", "Parent" : "93"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U7", "Parent" : "93"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mul_64s_64s_cud_U8", "Parent" : "93"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U9", "Parent" : "93"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_451ns_45dEe_U10", "Parent" : "93"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U11", "Parent" : "93"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_515ns_51eOg_U12", "Parent" : "93"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U13", "Parent" : "93"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_579ns_57fYi_U14", "Parent" : "93"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U15", "Parent" : "93"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_643ns_64g8j_U16", "Parent" : "93"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U17", "Parent" : "93"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_707ns_70hbi_U18", "Parent" : "93"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U19", "Parent" : "93"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_771ns_77ibs_U20", "Parent" : "93"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U21", "Parent" : "93"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U22", "Parent" : "93"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_579ns_57fYi_U23", "Parent" : "93"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_707ns_70hbi_U24", "Parent" : "93"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U25", "Parent" : "93"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_579ns_57fYi_U26", "Parent" : "93"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U27", "Parent" : "93"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U28", "Parent" : "93"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_298.xDBL_add_837ns_83kbM_U44", "Parent" : "92"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303", "Parent" : "0", "Child" : ["124", "153"],
		"CDFG" : "rdc_mont",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_448_fu_30"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_448_fu_30"}],
		"Port" : [
			{"Name" : "ma_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30", "Parent" : "123", "Child" : ["125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152"],
		"CDFG" : "bc_mult_448",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mux_73_64_1_1_U1", "Parent" : "124"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U2", "Parent" : "124"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U3", "Parent" : "124"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U4", "Parent" : "124"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U5", "Parent" : "124"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U6", "Parent" : "124"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mul_64ns_64nbkb_U7", "Parent" : "124"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mul_64s_64s_cud_U8", "Parent" : "124"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U9", "Parent" : "124"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_451ns_45dEe_U10", "Parent" : "124"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U11", "Parent" : "124"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_515ns_51eOg_U12", "Parent" : "124"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U13", "Parent" : "124"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_579ns_57fYi_U14", "Parent" : "124"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U15", "Parent" : "124"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_643ns_64g8j_U16", "Parent" : "124"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U17", "Parent" : "124"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_707ns_70hbi_U18", "Parent" : "124"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U19", "Parent" : "124"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_771ns_77ibs_U20", "Parent" : "124"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_mux_73_448_1_1_U21", "Parent" : "124"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U22", "Parent" : "124"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_579ns_57fYi_U23", "Parent" : "124"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_707ns_70hbi_U24", "Parent" : "124"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U25", "Parent" : "124"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_579ns_57fYi_U26", "Parent" : "124"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U27", "Parent" : "124"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.grp_bc_mult_448_fu_30.xDBL_add_835ns_83jbC_U28", "Parent" : "124"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_303.xDBL_add_837ns_83kbM_U44", "Parent" : "123"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_sub_448ns_44lbW_U47", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_sub_448ns_44lbW_U48", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U49", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U50", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U51", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U52", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_sub_448ns_44lbW_U53", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_sub_448ns_44lbW_U54", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U55", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U56", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U57", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U58", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_sub_448ns_44lbW_U59", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U60", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U61", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_sub_448ns_44lbW_U62", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U63", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_sub_836ns_83ncg_U64", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U65", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U66", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_sub_836ns_83ncg_U67", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U68", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U69", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_sub_836ns_83ncg_U70", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U71", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U72", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U73", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_add_448ns_44mb6_U74", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xDBL_sub_836ns_83ncg_U75", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xDBL {
		P_X_V {Type I LastRead 1 FirstWrite -1}
		P_Z_V {Type I LastRead 1 FirstWrite -1}
		Q_X_V {Type O LastRead -1 FirstWrite 15}
		Q_Z_V {Type O LastRead -1 FirstWrite 13}
		A24plus_V {Type I LastRead 8 FirstWrite -1}
		C24_V {Type I LastRead 6 FirstWrite -1}}
	mp_mul {
		a_V {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 0 FirstWrite -1}}
	bc_mult_448 {
		a_V {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 0 FirstWrite -1}}
	mp_mul {
		a_V {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 0 FirstWrite -1}}
	bc_mult_448 {
		a_V {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma_V {Type I LastRead 0 FirstWrite -1}}
	bc_mult_448 {
		a_V {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma_V {Type I LastRead 0 FirstWrite -1}}
	bc_mult_448 {
		a_V {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 0 FirstWrite -1}}
	rdc_mont {
		ma_V {Type I LastRead 0 FirstWrite -1}}
	bc_mult_448 {
		a_V {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "589", "Max" : "589"}
	, {"Name" : "Interval", "Min" : "590", "Max" : "590"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	P_X_V { ap_memory {  { P_X_V_address0 mem_address 1 1 }  { P_X_V_ce0 mem_ce 1 1 }  { P_X_V_q0 mem_dout 0 448 }  { P_X_V_address1 MemPortADDR2 1 1 }  { P_X_V_ce1 MemPortCE2 1 1 }  { P_X_V_q1 MemPortDOUT2 0 448 } } }
	P_Z_V { ap_memory {  { P_Z_V_address0 mem_address 1 1 }  { P_Z_V_ce0 mem_ce 1 1 }  { P_Z_V_q0 mem_dout 0 448 }  { P_Z_V_address1 MemPortADDR2 1 1 }  { P_Z_V_ce1 MemPortCE2 1 1 }  { P_Z_V_q1 MemPortDOUT2 0 448 } } }
	Q_X_V { ap_memory {  { Q_X_V_address0 mem_address 1 1 }  { Q_X_V_ce0 mem_ce 1 1 }  { Q_X_V_we0 mem_we 1 1 }  { Q_X_V_d0 mem_din 1 448 }  { Q_X_V_address1 MemPortADDR2 1 1 }  { Q_X_V_ce1 MemPortCE2 1 1 }  { Q_X_V_we1 MemPortWE2 1 1 }  { Q_X_V_d1 MemPortDIN2 1 448 } } }
	Q_Z_V { ap_memory {  { Q_Z_V_address0 mem_address 1 1 }  { Q_Z_V_ce0 mem_ce 1 1 }  { Q_Z_V_we0 mem_we 1 1 }  { Q_Z_V_d0 mem_din 1 448 }  { Q_Z_V_address1 MemPortADDR2 1 1 }  { Q_Z_V_ce1 MemPortCE2 1 1 }  { Q_Z_V_we1 MemPortWE2 1 1 }  { Q_Z_V_d1 MemPortDIN2 1 448 } } }
	A24plus_V { ap_memory {  { A24plus_V_address0 mem_address 1 1 }  { A24plus_V_ce0 mem_ce 1 1 }  { A24plus_V_q0 mem_dout 0 448 } } }
	C24_V { ap_memory {  { C24_V_address0 mem_address 1 1 }  { C24_V_ce0 mem_ce 1 1 }  { C24_V_q0 mem_dout 0 448 } } }
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
