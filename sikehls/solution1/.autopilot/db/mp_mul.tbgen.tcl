set moduleName mp_mul
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
set C_modelName {mp_mul}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "22", "28", "34", "40", "46", "52", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "mp_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "88", "EstimateLatencyMax" : "88",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_koa_mult_h_1_fu_81"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_2_fu_86"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_1_fu_91"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc2_mult_1_fu_96"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult_fu_101"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc_mult1_fu_106"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc2_mult_fu_111"}],
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_V", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81", "Parent" : "0", "Child" : ["2", "8", "14", "20", "21"],
		"CDFG" : "koa_mult_h_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "78", "EstimateLatencyMax" : "78",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc1_mult_1_fu_30"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc1_mult_fu_35"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bc1_mult1_fu_40"}],
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_1_fu_30", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "bc1_mult_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ta_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_1_fu_30.mp_mul_mux_73_17_dEe_U35", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_1_fu_30.mp_mul_mul_mul_17eOg_U36", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_1_fu_30.mp_mul_mul_mul_17eOg_U37", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_1_fu_30.mp_mul_mul_mul_17eOg_U38", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_1_fu_30.mp_mul_mul_mul_17eOg_U39", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_fu_35", "Parent" : "1", "Child" : ["9", "10", "11", "12", "13"],
		"CDFG" : "bc1_mult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_fu_35.mp_mul_mux_73_16_bkb_U23", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_fu_35.mp_mul_mul_mul_16cud_U24", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_fu_35.mp_mul_mul_mul_16cud_U25", "Parent" : "8"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_fu_35.mp_mul_mul_mul_16cud_U26", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult_fu_35.mp_mul_mul_mul_16cud_U27", "Parent" : "8"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult1_fu_40", "Parent" : "1", "Child" : ["15", "16", "17", "18", "19"],
		"CDFG" : "bc1_mult1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult1_fu_40.mp_mul_mux_73_16_bkb_U29", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult1_fu_40.mp_mul_mul_mul_16cud_U30", "Parent" : "14"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult1_fu_40.mp_mul_mul_mul_16cud_U31", "Parent" : "14"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult1_fu_40.mp_mul_mul_mul_16cud_U32", "Parent" : "14"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.grp_bc1_mult1_fu_40.mp_mul_mul_mul_16cud_U33", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.mp_mul_add_448ns_fYi_U41", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_koa_mult_h_1_fu_81.mp_mul_add_448ns_fYi_U42", "Parent" : "1"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_86", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27"],
		"CDFG" : "bc_mult_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ta_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_86.mp_mul_mux_73_17_dEe_U57", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_86.mp_mul_mul_mul_17eOg_U58", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_86.mp_mul_mul_mul_17eOg_U59", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_86.mp_mul_mul_mul_17eOg_U60", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_2_fu_86.mp_mul_mul_mul_17eOg_U61", "Parent" : "22"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_91", "Parent" : "0", "Child" : ["29", "30", "31", "32", "33"],
		"CDFG" : "bc_mult_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ta_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_91.mp_mul_mux_73_17_dEe_U15", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_91.mp_mul_mul_mul_17eOg_U16", "Parent" : "28"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_91.mp_mul_mul_mul_17eOg_U17", "Parent" : "28"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_91.mp_mul_mul_mul_17eOg_U18", "Parent" : "28"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_1_fu_91.mp_mul_mul_mul_17eOg_U19", "Parent" : "28"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_1_fu_96", "Parent" : "0", "Child" : ["35", "36", "37", "38", "39"],
		"CDFG" : "bc2_mult_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ta_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_1_fu_96.mp_mul_mux_73_17_dEe_U51", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_1_fu_96.mp_mul_mul_mul_17eOg_U52", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_1_fu_96.mp_mul_mul_mul_17eOg_U53", "Parent" : "34"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_1_fu_96.mp_mul_mul_mul_17eOg_U54", "Parent" : "34"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_1_fu_96.mp_mul_mul_mul_17eOg_U55", "Parent" : "34"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_101", "Parent" : "0", "Child" : ["41", "42", "43", "44", "45"],
		"CDFG" : "bc_mult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_101.mp_mul_mux_73_16_bkb_U1", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_101.mp_mul_mul_mul_16cud_U2", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_101.mp_mul_mul_mul_16cud_U3", "Parent" : "40"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_101.mp_mul_mul_mul_16cud_U4", "Parent" : "40"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult_fu_101.mp_mul_mul_mul_16cud_U5", "Parent" : "40"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult1_fu_106", "Parent" : "0", "Child" : ["47", "48", "49", "50", "51"],
		"CDFG" : "bc_mult1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult1_fu_106.mp_mul_mux_73_16_bkb_U9", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult1_fu_106.mp_mul_mul_mul_16cud_U10", "Parent" : "46"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult1_fu_106.mp_mul_mul_mul_16cud_U11", "Parent" : "46"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult1_fu_106.mp_mul_mul_mul_16cud_U12", "Parent" : "46"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc_mult1_fu_106.mp_mul_mul_mul_16cud_U13", "Parent" : "46"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_fu_111", "Parent" : "0", "Child" : ["53", "54", "55", "56", "57"],
		"CDFG" : "bc2_mult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_fu_111.mp_mul_mux_73_16_bkb_U45", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_fu_111.mp_mul_mul_mul_16cud_U46", "Parent" : "52"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_fu_111.mp_mul_mul_mul_16cud_U47", "Parent" : "52"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_fu_111.mp_mul_mul_mul_16cud_U48", "Parent" : "52"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bc2_mult_fu_111.mp_mul_mul_mul_16cud_U49", "Parent" : "52"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mp_mul_add_339ns_g8j_U63", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mp_mul_add_342ns_hbi_U64", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mp_mul_add_448s_4ibs_U65", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mp_mul_add_450s_4jbC_U66", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mp_mul_sub_451ns_kbM_U67", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mp_mul_sub_451ns_kbM_U68", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mp_mul_add_896ns_lbW_U69", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mp_mul {
		a_V {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead -1 FirstWrite -1}
		c_V {Type O LastRead -1 FirstWrite 10}}
	koa_mult_h_1 {
		a_V {Type I LastRead 0 FirstWrite -1}}
	bc1_mult_1 {
		ta_V {Type I LastRead 0 FirstWrite -1}}
	bc1_mult {
		a_V {Type I LastRead 0 FirstWrite -1}}
	bc1_mult1 {
		a_V {Type I LastRead 0 FirstWrite -1}}
	bc_mult_2 {
		ta_V {Type I LastRead 0 FirstWrite -1}}
	bc_mult_1 {
		ta_V {Type I LastRead 0 FirstWrite -1}}
	bc2_mult_1 {
		ta_V {Type I LastRead 0 FirstWrite -1}}
	bc_mult {
		a_V {Type I LastRead 0 FirstWrite -1}}
	bc_mult1 {
		a_V {Type I LastRead 0 FirstWrite -1}}
	bc2_mult {
		a_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "88", "Max" : "88"}
	, {"Name" : "Interval", "Min" : "89", "Max" : "89"}
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
