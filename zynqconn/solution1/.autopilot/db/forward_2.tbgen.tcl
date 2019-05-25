set moduleName forward_2
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
set C_modelName {forward.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv_layer_5_6_1_0_32_32_1_input_data_V int 16 regular {array 1024 { 1 3 } 1 1 }  }
	{ conv_layer_5_6_1_0_32_32_1_output_data_V int 16 regular {array 4704 { 2 3 } 1 1 }  }
	{ conv_layer_5_6_1_0_32_32_1_W_data_V int 16 regular {array 150 { 1 3 } 1 1 }  }
	{ conv_layer_5_6_1_0_32_32_1_inpad_data_V int 16 regular {array 1024 { 2 3 } 1 1 }  }
	{ conv_layer_5_6_1_0_32_32_1_relu1_input_data_V int 16 regular {array 4704 { 2 3 } 1 1 }  }
	{ conv_layer_5_6_1_0_32_32_1_relu1_output_data_V int 15 regular {array 4704 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv_layer_5_6_1_0_32_32_1_input_data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "conv_layer_5_6_1_0_32_32_1_output_data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "conv_layer_5_6_1_0_32_32_1_W_data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "conv_layer_5_6_1_0_32_32_1_inpad_data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv_layer_5_6_1_0_32_32_1_input_data_V_address0 sc_out sc_lv 10 signal 0 } 
	{ conv_layer_5_6_1_0_32_32_1_input_data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ conv_layer_5_6_1_0_32_32_1_input_data_V_q0 sc_in sc_lv 16 signal 0 } 
	{ conv_layer_5_6_1_0_32_32_1_output_data_V_address0 sc_out sc_lv 13 signal 1 } 
	{ conv_layer_5_6_1_0_32_32_1_output_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv_layer_5_6_1_0_32_32_1_output_data_V_we0 sc_out sc_logic 1 signal 1 } 
	{ conv_layer_5_6_1_0_32_32_1_output_data_V_d0 sc_out sc_lv 16 signal 1 } 
	{ conv_layer_5_6_1_0_32_32_1_output_data_V_q0 sc_in sc_lv 16 signal 1 } 
	{ conv_layer_5_6_1_0_32_32_1_W_data_V_address0 sc_out sc_lv 8 signal 2 } 
	{ conv_layer_5_6_1_0_32_32_1_W_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ conv_layer_5_6_1_0_32_32_1_W_data_V_q0 sc_in sc_lv 16 signal 2 } 
	{ conv_layer_5_6_1_0_32_32_1_inpad_data_V_address0 sc_out sc_lv 10 signal 3 } 
	{ conv_layer_5_6_1_0_32_32_1_inpad_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ conv_layer_5_6_1_0_32_32_1_inpad_data_V_we0 sc_out sc_logic 1 signal 3 } 
	{ conv_layer_5_6_1_0_32_32_1_inpad_data_V_d0 sc_out sc_lv 16 signal 3 } 
	{ conv_layer_5_6_1_0_32_32_1_inpad_data_V_q0 sc_in sc_lv 16 signal 3 } 
	{ conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_address0 sc_out sc_lv 13 signal 4 } 
	{ conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_we0 sc_out sc_logic 1 signal 4 } 
	{ conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_d0 sc_out sc_lv 16 signal 4 } 
	{ conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_q0 sc_in sc_lv 16 signal 4 } 
	{ conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_address0 sc_out sc_lv 13 signal 5 } 
	{ conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_we0 sc_out sc_logic 1 signal 5 } 
	{ conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_d0 sc_out sc_lv 15 signal 5 } 
	{ conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_q0 sc_in sc_lv 15 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_input_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_input_data_V", "role": "address0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_input_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_input_data_V", "role": "ce0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_input_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_input_data_V", "role": "q0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_output_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_output_data_V", "role": "address0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_output_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_output_data_V", "role": "ce0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_output_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_output_data_V", "role": "we0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_output_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_output_data_V", "role": "d0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_output_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_output_data_V", "role": "q0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_W_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_W_data_V", "role": "address0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_W_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_W_data_V", "role": "ce0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_W_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_W_data_V", "role": "q0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_inpad_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_inpad_data_V", "role": "address0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_inpad_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_inpad_data_V", "role": "ce0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_inpad_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_inpad_data_V", "role": "we0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_inpad_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_inpad_data_V", "role": "d0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_inpad_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_inpad_data_V", "role": "q0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V", "role": "address0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V", "role": "ce0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V", "role": "we0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V", "role": "d0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V", "role": "q0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V", "role": "address0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V", "role": "ce0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V", "role": "we0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V", "role": "d0" }} , 
 	{ "name": "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "forward_2",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_conv_fu_186"}],
		"Port" : [
			{"Name" : "conv_layer_5_6_1_0_32_32_1_input_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forward_conv_fu_186", "Port" : "conv_layer_5_6_1_0_32_32_1_input_data_V"}]},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_output_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forward_conv_fu_186", "Port" : "conv_layer_5_6_1_0_32_32_1_output_data_V"}]},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_W_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forward_conv_fu_186", "Port" : "conv_layer_5_6_1_0_32_32_1_W_data_V"}]},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_inpad_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_forward_conv_fu_186", "Port" : "conv_layer_5_6_1_0_32_32_1_inpad_data_V"}]},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_conv_fu_186", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "forward_conv",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Padding_fu_235"}],
		"Port" : [
			{"Name" : "conv_layer_5_6_1_0_32_32_1_input_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Padding_fu_235", "Port" : "in_V"}]},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_output_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_W_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_inpad_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Padding_fu_235", "Port" : "out_V"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_conv_fu_186.grp_Padding_fu_235", "Parent" : "1",
		"CDFG" : "Padding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2115", "EstimateLatencyMax" : "2115",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_conv_fu_186.lenet_mac_muladd_16s_16s_28ns_28_1_1_U3", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	forward_2 {
		conv_layer_5_6_1_0_32_32_1_input_data_V {Type I LastRead 3 FirstWrite -1}
		conv_layer_5_6_1_0_32_32_1_output_data_V {Type IO LastRead 2 FirstWrite 5}
		conv_layer_5_6_1_0_32_32_1_W_data_V {Type I LastRead 8 FirstWrite -1}
		conv_layer_5_6_1_0_32_32_1_inpad_data_V {Type IO LastRead 7 FirstWrite 4}
		conv_layer_5_6_1_0_32_32_1_relu1_input_data_V {Type IO LastRead 5 FirstWrite 3}
		conv_layer_5_6_1_0_32_32_1_relu1_output_data_V {Type IO LastRead 4 FirstWrite 6}}
	forward_conv {
		conv_layer_5_6_1_0_32_32_1_input_data_V {Type I LastRead 3 FirstWrite -1}
		conv_layer_5_6_1_0_32_32_1_output_data_V {Type O LastRead -1 FirstWrite 5}
		conv_layer_5_6_1_0_32_32_1_W_data_V {Type I LastRead 8 FirstWrite -1}
		conv_layer_5_6_1_0_32_32_1_inpad_data_V {Type IO LastRead 7 FirstWrite 4}}
	Padding {
		out_V {Type O LastRead -1 FirstWrite 4}
		in_V {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	conv_layer_5_6_1_0_32_32_1_input_data_V { ap_memory {  { conv_layer_5_6_1_0_32_32_1_input_data_V_address0 mem_address 1 10 }  { conv_layer_5_6_1_0_32_32_1_input_data_V_ce0 mem_ce 1 1 }  { conv_layer_5_6_1_0_32_32_1_input_data_V_q0 mem_dout 0 16 } } }
	conv_layer_5_6_1_0_32_32_1_output_data_V { ap_memory {  { conv_layer_5_6_1_0_32_32_1_output_data_V_address0 mem_address 1 13 }  { conv_layer_5_6_1_0_32_32_1_output_data_V_ce0 mem_ce 1 1 }  { conv_layer_5_6_1_0_32_32_1_output_data_V_we0 mem_we 1 1 }  { conv_layer_5_6_1_0_32_32_1_output_data_V_d0 mem_din 1 16 }  { conv_layer_5_6_1_0_32_32_1_output_data_V_q0 mem_dout 0 16 } } }
	conv_layer_5_6_1_0_32_32_1_W_data_V { ap_memory {  { conv_layer_5_6_1_0_32_32_1_W_data_V_address0 mem_address 1 8 }  { conv_layer_5_6_1_0_32_32_1_W_data_V_ce0 mem_ce 1 1 }  { conv_layer_5_6_1_0_32_32_1_W_data_V_q0 mem_dout 0 16 } } }
	conv_layer_5_6_1_0_32_32_1_inpad_data_V { ap_memory {  { conv_layer_5_6_1_0_32_32_1_inpad_data_V_address0 mem_address 1 10 }  { conv_layer_5_6_1_0_32_32_1_inpad_data_V_ce0 mem_ce 1 1 }  { conv_layer_5_6_1_0_32_32_1_inpad_data_V_we0 mem_we 1 1 }  { conv_layer_5_6_1_0_32_32_1_inpad_data_V_d0 mem_din 1 16 }  { conv_layer_5_6_1_0_32_32_1_inpad_data_V_q0 mem_dout 0 16 } } }
	conv_layer_5_6_1_0_32_32_1_relu1_input_data_V { ap_memory {  { conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_address0 mem_address 1 13 }  { conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_ce0 mem_ce 1 1 }  { conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_we0 mem_we 1 1 }  { conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_d0 mem_din 1 16 }  { conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_q0 mem_dout 0 16 } } }
	conv_layer_5_6_1_0_32_32_1_relu1_output_data_V { ap_memory {  { conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_address0 mem_address 1 13 }  { conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_ce0 mem_ce 1 1 }  { conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_we0 mem_we 1 1 }  { conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_d0 mem_din 1 15 }  { conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_q0 mem_dout 0 15 } } }
}
