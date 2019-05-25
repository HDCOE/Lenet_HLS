set moduleName forward_pool_1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {forward_pool.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ pool_layer_2_2_1_10_10_16_input_data_V int 16 regular {array 1600 { 1 3 } 1 1 }  }
	{ pool_layer_2_2_1_10_10_16_output_data_V int 16 regular {array 400 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pool_layer_2_2_1_10_10_16_input_data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "pool_layer_2_2_1_10_10_16_output_data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pool_layer_2_2_1_10_10_16_input_data_V_address0 sc_out sc_lv 11 signal 0 } 
	{ pool_layer_2_2_1_10_10_16_input_data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ pool_layer_2_2_1_10_10_16_input_data_V_q0 sc_in sc_lv 16 signal 0 } 
	{ pool_layer_2_2_1_10_10_16_output_data_V_address0 sc_out sc_lv 9 signal 1 } 
	{ pool_layer_2_2_1_10_10_16_output_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ pool_layer_2_2_1_10_10_16_output_data_V_we0 sc_out sc_logic 1 signal 1 } 
	{ pool_layer_2_2_1_10_10_16_output_data_V_d0 sc_out sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pool_layer_2_2_1_10_10_16_input_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "pool_layer_2_2_1_10_10_16_input_data_V", "role": "address0" }} , 
 	{ "name": "pool_layer_2_2_1_10_10_16_input_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_layer_2_2_1_10_10_16_input_data_V", "role": "ce0" }} , 
 	{ "name": "pool_layer_2_2_1_10_10_16_input_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pool_layer_2_2_1_10_10_16_input_data_V", "role": "q0" }} , 
 	{ "name": "pool_layer_2_2_1_10_10_16_output_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pool_layer_2_2_1_10_10_16_output_data_V", "role": "address0" }} , 
 	{ "name": "pool_layer_2_2_1_10_10_16_output_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_layer_2_2_1_10_10_16_output_data_V", "role": "ce0" }} , 
 	{ "name": "pool_layer_2_2_1_10_10_16_output_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_layer_2_2_1_10_10_16_output_data_V", "role": "we0" }} , 
 	{ "name": "pool_layer_2_2_1_10_10_16_output_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pool_layer_2_2_1_10_10_16_output_data_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "forward_pool_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pool_layer_2_2_1_10_10_16_input_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pool_layer_2_2_1_10_10_16_output_data_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	forward_pool_1 {
		pool_layer_2_2_1_10_10_16_input_data_V {Type I LastRead 5 FirstWrite -1}
		pool_layer_2_2_1_10_10_16_output_data_V {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	pool_layer_2_2_1_10_10_16_input_data_V { ap_memory {  { pool_layer_2_2_1_10_10_16_input_data_V_address0 mem_address 1 11 }  { pool_layer_2_2_1_10_10_16_input_data_V_ce0 mem_ce 1 1 }  { pool_layer_2_2_1_10_10_16_input_data_V_q0 mem_dout 0 16 } } }
	pool_layer_2_2_1_10_10_16_output_data_V { ap_memory {  { pool_layer_2_2_1_10_10_16_output_data_V_address0 mem_address 1 9 }  { pool_layer_2_2_1_10_10_16_output_data_V_ce0 mem_ce 1 1 }  { pool_layer_2_2_1_10_10_16_output_data_V_we0 mem_we 1 1 }  { pool_layer_2_2_1_10_10_16_output_data_V_d0 mem_din 1 16 } } }
}
