set moduleName eval_4_isog
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
set C_modelName {eval_4_isog}
set C_modelType { void 0 }
set C_modelArgList {
	{ P_X_V int 448 regular {array 2 { 2 2 } 1 1 }  }
	{ P_Z_V int 448 regular {array 2 { 2 2 } 1 1 }  }
	{ coeff_V int 448 regular {array 6 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "P_X_V", "interface" : "memory", "bitwidth" : 448, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":447,"cElement": [{"cName": "P.X.V","cData": "uint448","bit_use": { "low": 0,"up": 447},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "P_Z_V", "interface" : "memory", "bitwidth" : 448, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":447,"cElement": [{"cName": "P.Z.V","cData": "uint448","bit_use": { "low": 0,"up": 447},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "coeff_V", "interface" : "memory", "bitwidth" : 448, "direction" : "READONLY", "bitSlice":[{"low":0,"up":447,"cElement": [{"cName": "coeff.V","cData": "uint448","bit_use": { "low": 0,"up": 447},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ P_X_V_address0 sc_out sc_lv 1 signal 0 } 
	{ P_X_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ P_X_V_we0 sc_out sc_logic 1 signal 0 } 
	{ P_X_V_d0 sc_out sc_lv 448 signal 0 } 
	{ P_X_V_q0 sc_in sc_lv 448 signal 0 } 
	{ P_X_V_address1 sc_out sc_lv 1 signal 0 } 
	{ P_X_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ P_X_V_we1 sc_out sc_logic 1 signal 0 } 
	{ P_X_V_d1 sc_out sc_lv 448 signal 0 } 
	{ P_X_V_q1 sc_in sc_lv 448 signal 0 } 
	{ P_Z_V_address0 sc_out sc_lv 1 signal 1 } 
	{ P_Z_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ P_Z_V_we0 sc_out sc_logic 1 signal 1 } 
	{ P_Z_V_d0 sc_out sc_lv 448 signal 1 } 
	{ P_Z_V_q0 sc_in sc_lv 448 signal 1 } 
	{ P_Z_V_address1 sc_out sc_lv 1 signal 1 } 
	{ P_Z_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ P_Z_V_we1 sc_out sc_logic 1 signal 1 } 
	{ P_Z_V_d1 sc_out sc_lv 448 signal 1 } 
	{ P_Z_V_q1 sc_in sc_lv 448 signal 1 } 
	{ coeff_V_address0 sc_out sc_lv 3 signal 2 } 
	{ coeff_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ coeff_V_q0 sc_in sc_lv 448 signal 2 } 
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
 	{ "name": "P_X_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_X_V", "role": "we0" }} , 
 	{ "name": "P_X_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_X_V", "role": "d0" }} , 
 	{ "name": "P_X_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_X_V", "role": "q0" }} , 
 	{ "name": "P_X_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P_X_V", "role": "address1" }} , 
 	{ "name": "P_X_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_X_V", "role": "ce1" }} , 
 	{ "name": "P_X_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_X_V", "role": "we1" }} , 
 	{ "name": "P_X_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_X_V", "role": "d1" }} , 
 	{ "name": "P_X_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_X_V", "role": "q1" }} , 
 	{ "name": "P_Z_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P_Z_V", "role": "address0" }} , 
 	{ "name": "P_Z_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_Z_V", "role": "ce0" }} , 
 	{ "name": "P_Z_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_Z_V", "role": "we0" }} , 
 	{ "name": "P_Z_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_Z_V", "role": "d0" }} , 
 	{ "name": "P_Z_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_Z_V", "role": "q0" }} , 
 	{ "name": "P_Z_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "P_Z_V", "role": "address1" }} , 
 	{ "name": "P_Z_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_Z_V", "role": "ce1" }} , 
 	{ "name": "P_Z_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "P_Z_V", "role": "we1" }} , 
 	{ "name": "P_Z_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_Z_V", "role": "d1" }} , 
 	{ "name": "P_Z_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "P_Z_V", "role": "q1" }} , 
 	{ "name": "coeff_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "coeff_V", "role": "address0" }} , 
 	{ "name": "coeff_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "coeff_V", "role": "ce0" }} , 
 	{ "name": "coeff_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "coeff_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "35", "70", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101"],
		"CDFG" : "eval_4_isog",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1379", "EstimateLatencyMax" : "1379",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp_mul_fu_163"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_rdc_mont_fu_246"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mp2_add_fu_307"}],
		"Port" : [
			{"Name" : "P_X_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_mp2_add_fu_307", "Port" : "c_V"}]},
			{"Name" : "P_Z_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "coeff_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mux_8bkb_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mul_5cud_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mul_5cud_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mul_5cud_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mul_5cud_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mul_5cud_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mul_5cud_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mul_5cud_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mul_5cud_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mux_8dEe_U10", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U11", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mux_8dEe_U12", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U13", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mux_8dEe_U14", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U15", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mux_8dEe_U16", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U17", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mux_8dEe_U18", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U19", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mux_8dEe_U20", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U21", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mux_8dEe_U22", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U23", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_mux_8dEe_U24", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U25", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U26", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U27", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U28", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U29", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U30", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U31", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mp_mul_fu_163.grp_bc_mult_448_fu_20.eval_4_isog_add_8eOg_U32", "Parent" : "2"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246", "Parent" : "0", "Child" : ["36", "69"],
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30", "Parent" : "35", "Child" : ["37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68"],
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mux_8bkb_U1", "Parent" : "36"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mul_5cud_U2", "Parent" : "36"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mul_5cud_U3", "Parent" : "36"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mul_5cud_U4", "Parent" : "36"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mul_5cud_U5", "Parent" : "36"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mul_5cud_U6", "Parent" : "36"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mul_5cud_U7", "Parent" : "36"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mul_5cud_U8", "Parent" : "36"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mul_5cud_U9", "Parent" : "36"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mux_8dEe_U10", "Parent" : "36"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U11", "Parent" : "36"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mux_8dEe_U12", "Parent" : "36"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U13", "Parent" : "36"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mux_8dEe_U14", "Parent" : "36"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U15", "Parent" : "36"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mux_8dEe_U16", "Parent" : "36"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U17", "Parent" : "36"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mux_8dEe_U18", "Parent" : "36"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U19", "Parent" : "36"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mux_8dEe_U20", "Parent" : "36"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U21", "Parent" : "36"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mux_8dEe_U22", "Parent" : "36"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U23", "Parent" : "36"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_mux_8dEe_U24", "Parent" : "36"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U25", "Parent" : "36"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U26", "Parent" : "36"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U27", "Parent" : "36"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U28", "Parent" : "36"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U29", "Parent" : "36"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U30", "Parent" : "36"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U31", "Parent" : "36"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.grp_bc_mult_448_fu_30.eval_4_isog_add_8eOg_U32", "Parent" : "36"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rdc_mont_fu_246.eval_4_isog_add_8eOg_U41", "Parent" : "35"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mp2_add_fu_307", "Parent" : "0", "Child" : ["71", "72"],
		"CDFG" : "mp2_add",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp2_add_fu_307.eval_4_isog_add_4fYi_U43", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mp2_add_fu_307.eval_4_isog_add_4fYi_U44", "Parent" : "70"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U51", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U52", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U53", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_sub_8g8j_U54", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_sub_4hbi_U55", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_sub_4hbi_U56", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U57", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U58", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U59", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U60", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U61", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U62", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_sub_4hbi_U63", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_sub_4hbi_U64", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_sub_4hbi_U65", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U66", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U67", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_sub_4hbi_U68", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U69", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U70", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U71", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U72", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_sub_4hbi_U73", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_sub_4hbi_U74", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U75", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U76", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_sub_8g8j_U77", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U78", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4fYi_U79", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	eval_4_isog {
		P_X_V {Type IO LastRead 26 FirstWrite 1}
		P_Z_V {Type IO LastRead 20 FirstWrite 13}
		coeff_V {Type I LastRead 13 FirstWrite -1}}
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
	mp2_add {
		a_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_1_V_read {Type I LastRead 0 FirstWrite -1}
		c_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1379", "Max" : "1379"}
	, {"Name" : "Interval", "Min" : "1380", "Max" : "1380"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	P_X_V { ap_memory {  { P_X_V_address0 mem_address 1 1 }  { P_X_V_ce0 mem_ce 1 1 }  { P_X_V_we0 mem_we 1 1 }  { P_X_V_d0 mem_din 1 448 }  { P_X_V_q0 mem_dout 0 448 }  { P_X_V_address1 MemPortADDR2 1 1 }  { P_X_V_ce1 MemPortCE2 1 1 }  { P_X_V_we1 MemPortWE2 1 1 }  { P_X_V_d1 MemPortDIN2 1 448 }  { P_X_V_q1 MemPortDOUT2 0 448 } } }
	P_Z_V { ap_memory {  { P_Z_V_address0 mem_address 1 1 }  { P_Z_V_ce0 mem_ce 1 1 }  { P_Z_V_we0 mem_we 1 1 }  { P_Z_V_d0 mem_din 1 448 }  { P_Z_V_q0 mem_dout 0 448 }  { P_Z_V_address1 MemPortADDR2 1 1 }  { P_Z_V_ce1 MemPortCE2 1 1 }  { P_Z_V_we1 MemPortWE2 1 1 }  { P_Z_V_d1 MemPortDIN2 1 448 }  { P_Z_V_q1 MemPortDOUT2 0 448 } } }
	coeff_V { ap_memory {  { coeff_V_address0 mem_address 1 3 }  { coeff_V_ce0 mem_ce 1 1 }  { coeff_V_q0 mem_dout 0 448 } } }
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
