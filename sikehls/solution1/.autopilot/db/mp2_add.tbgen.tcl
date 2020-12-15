set moduleName mp2_add
set isTopModule 0
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
set C_modelName {mp2_add}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_0_V_read int 448 regular  }
	{ a_1_V_read int 448 regular  }
	{ b_0_V_read int 448 regular  }
	{ b_1_V_read int 448 regular  }
	{ c_V int 448 regular {array 2 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_0_V_read", "interface" : "wire", "bitwidth" : 448, "direction" : "READONLY"} , 
 	{ "Name" : "a_1_V_read", "interface" : "wire", "bitwidth" : 448, "direction" : "READONLY"} , 
 	{ "Name" : "b_0_V_read", "interface" : "wire", "bitwidth" : 448, "direction" : "READONLY"} , 
 	{ "Name" : "b_1_V_read", "interface" : "wire", "bitwidth" : 448, "direction" : "READONLY"} , 
 	{ "Name" : "c_V", "interface" : "memory", "bitwidth" : 448, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_0_V_read sc_in sc_lv 448 signal 0 } 
	{ a_1_V_read sc_in sc_lv 448 signal 1 } 
	{ b_0_V_read sc_in sc_lv 448 signal 2 } 
	{ b_1_V_read sc_in sc_lv 448 signal 3 } 
	{ c_V_address0 sc_out sc_lv 1 signal 4 } 
	{ c_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ c_V_we0 sc_out sc_logic 1 signal 4 } 
	{ c_V_d0 sc_out sc_lv 448 signal 4 } 
	{ c_V_address1 sc_out sc_lv 1 signal 4 } 
	{ c_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ c_V_we1 sc_out sc_logic 1 signal 4 } 
	{ c_V_d1 sc_out sc_lv 448 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "a_0_V_read", "role": "default" }} , 
 	{ "name": "a_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "a_1_V_read", "role": "default" }} , 
 	{ "name": "b_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "b_0_V_read", "role": "default" }} , 
 	{ "name": "b_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "b_1_V_read", "role": "default" }} , 
 	{ "name": "c_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_V", "role": "address0" }} , 
 	{ "name": "c_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_V", "role": "ce0" }} , 
 	{ "name": "c_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_V", "role": "we0" }} , 
 	{ "name": "c_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "c_V", "role": "d0" }} , 
 	{ "name": "c_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_V", "role": "address1" }} , 
 	{ "name": "c_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_V", "role": "ce1" }} , 
 	{ "name": "c_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_V", "role": "we1" }} , 
 	{ "name": "c_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":448, "type": "signal", "bundle":{"name": "c_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4ncg_U47", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eval_4_isog_add_4ncg_U48", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mp2_add {
		a_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_1_V_read {Type I LastRead 0 FirstWrite -1}
		c_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_0_V_read { ap_none {  { a_0_V_read in_data 0 448 } } }
	a_1_V_read { ap_none {  { a_1_V_read in_data 0 448 } } }
	b_0_V_read { ap_none {  { b_0_V_read in_data 0 448 } } }
	b_1_V_read { ap_none {  { b_1_V_read in_data 0 448 } } }
	c_V { ap_memory {  { c_V_address0 mem_address 1 1 }  { c_V_ce0 mem_ce 1 1 }  { c_V_we0 mem_we 1 1 }  { c_V_d0 mem_din 1 448 }  { c_V_address1 MemPortADDR2 1 1 }  { c_V_ce1 MemPortCE2 1 1 }  { c_V_we1 MemPortWE2 1 1 }  { c_V_d1 MemPortDIN2 1 448 } } }
}
