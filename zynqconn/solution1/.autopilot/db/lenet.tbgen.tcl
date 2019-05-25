set moduleName lenet
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
set C_modelName {lenet}
set C_modelType { int 32 }
set C_modelArgList {
	{ inStream_V_V int 16 regular {axi_s 0 volatile  { inStream_V_V Data } }  }
	{ outStream_V_V int 16 regular {axi_s 1 volatile  { outStream_V_V Data } }  }
	{ c1w_V_V int 16 regular {axi_s 0 volatile  { c1w_V_V Data } }  }
	{ c3w_V_V int 16 regular {axi_s 0 volatile  { c3w_V_V Data } }  }
	{ c5w_V_V int 16 regular {axi_s 0 volatile  { c5w_V_V Data } }  }
	{ fcw_V_V int 16 regular {axi_s 0 volatile  { fcw_V_V Data } }  }
	{ start int 32 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inStream_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "inStream.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "outStream.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "c1w_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "c1w.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "c3w_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "c3w.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "c5w_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "c5w.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fcw_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "fcw.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "start", "interface" : "axi_slave", "bundle":"CRTL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "start","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"CRTL_BUS","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ inStream_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ inStream_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ inStream_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ outStream_V_V_TDATA sc_out sc_lv 16 signal 1 } 
	{ outStream_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ outStream_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ c1w_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ c1w_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ c1w_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ c3w_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ c3w_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ c3w_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ c5w_V_V_TDATA sc_in sc_lv 16 signal 4 } 
	{ c5w_V_V_TVALID sc_in sc_logic 1 invld 4 } 
	{ c5w_V_V_TREADY sc_out sc_logic 1 inacc 4 } 
	{ fcw_V_V_TDATA sc_in sc_lv 16 signal 5 } 
	{ fcw_V_V_TVALID sc_in sc_logic 1 invld 5 } 
	{ fcw_V_V_TREADY sc_out sc_logic 1 inacc 5 } 
	{ s_axi_CRTL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CRTL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CRTL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CRTL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CRTL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CRTL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CRTL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CRTL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWADDR" },"address":[{"name":"lenet","role":"start","value":"0","valid_bit":"0"},{"name":"lenet","role":"continue","value":"0","valid_bit":"4"},{"name":"lenet","role":"auto_start","value":"0","valid_bit":"7"},{"name":"start","role":"data","value":"24"}] },
	{ "name": "s_axi_CRTL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CRTL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CRTL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CRTL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CRTL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CRTL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CRTL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARADDR" },"address":[{"name":"lenet","role":"start","value":"0","valid_bit":"0"},{"name":"lenet","role":"done","value":"0","valid_bit":"1"},{"name":"lenet","role":"idle","value":"0","valid_bit":"2"},{"name":"lenet","role":"ready","value":"0","valid_bit":"3"},{"name":"lenet","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
	{ "name": "s_axi_CRTL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CRTL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CRTL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CRTL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CRTL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CRTL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CRTL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CRTL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CRTL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "inStream_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inStream_V_V", "role": "TDATA" }} , 
 	{ "name": "inStream_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inStream_V_V", "role": "TVALID" }} , 
 	{ "name": "inStream_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inStream_V_V", "role": "TREADY" }} , 
 	{ "name": "outStream_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "outStream_V_V", "role": "TDATA" }} , 
 	{ "name": "outStream_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_V_V", "role": "TVALID" }} , 
 	{ "name": "outStream_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_V_V", "role": "TREADY" }} , 
 	{ "name": "c1w_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c1w_V_V", "role": "TDATA" }} , 
 	{ "name": "c1w_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "c1w_V_V", "role": "TVALID" }} , 
 	{ "name": "c1w_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "c1w_V_V", "role": "TREADY" }} , 
 	{ "name": "c3w_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c3w_V_V", "role": "TDATA" }} , 
 	{ "name": "c3w_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "c3w_V_V", "role": "TVALID" }} , 
 	{ "name": "c3w_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "c3w_V_V", "role": "TREADY" }} , 
 	{ "name": "c5w_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c5w_V_V", "role": "TDATA" }} , 
 	{ "name": "c5w_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "c5w_V_V", "role": "TVALID" }} , 
 	{ "name": "c5w_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "c5w_V_V", "role": "TREADY" }} , 
 	{ "name": "fcw_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fcw_V_V", "role": "TDATA" }} , 
 	{ "name": "fcw_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fcw_V_V", "role": "TVALID" }} , 
 	{ "name": "fcw_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "fcw_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "47", "51", "53", "57", "59"],
		"CDFG" : "lenet",
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
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_3_fu_1821"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_2_fu_1831"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_fu_1841"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_4_fu_1849"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_1_fu_1859"}],
		"Port" : [
			{"Name" : "inStream_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outStream_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c1w_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "c1w_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c3w_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "c3w_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "c5w_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "c5w_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fcw_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fcw_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "start", "Type" : "None", "Direction" : "I"},
			{"Name" : "c1_W_size_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c1_W_size_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c1_W_size_z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c3_W_size_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c3_W_size_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c3_W_size_z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c5_W_size_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c5_W_size_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c5_W_size_z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc6_W_size_x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc6_W_size_y", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc6_W_size_z", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c1_W_size_x_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c1_W_size_y_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c1_W_size_z_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c3_W_size_x_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c3_W_size_y_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c3_W_size_z_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c5_W_size_x_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c5_W_size_y_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c5_W_size_z_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc6_W_size_x_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc6_W_size_y_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc6_W_size_z_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet_CRTL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c1_input_data_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c1_output_data_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c1_W_data_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c1_inpad_data_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c1_relu1_input_data_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c1_relu1_output_dat_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p2_input_data_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p2_output_data_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p2_relu1_input_data_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p2_relu1_output_dat_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c3_input_data_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c3_output_data_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c3_W_data_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c3_inpad_data_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c3_relu1_input_data_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c3_relu1_output_dat_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p4_input_data_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p4_output_data_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p4_relu1_input_data_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p4_relu1_output_dat_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c5_input_data_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c5_output_data_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c5_W_data_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c5_inpad_data_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c5_relu1_input_data_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c5_relu1_output_dat_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc6_input_data_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc6_output_data_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc6_W_data_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_3_fu_1821", "Parent" : "0", "Child" : ["44"],
		"CDFG" : "forward_3",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_conv_1_fu_188"}],
		"Port" : [
			{"Name" : "conv_layer_5_16_1_0_14_14_6_input_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_forward_conv_1_fu_188", "Port" : "conv_layer_5_16_1_0_14_14_6_input_data_V"}]},
			{"Name" : "conv_layer_5_16_1_0_14_14_6_output_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_forward_conv_1_fu_188", "Port" : "conv_layer_5_16_1_0_14_14_6_output_data_V"}]},
			{"Name" : "conv_layer_5_16_1_0_14_14_6_W_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_forward_conv_1_fu_188", "Port" : "conv_layer_5_16_1_0_14_14_6_W_data_V"}]},
			{"Name" : "conv_layer_5_16_1_0_14_14_6_inpad_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_forward_conv_1_fu_188", "Port" : "conv_layer_5_16_1_0_14_14_6_inpad_data_V"}]},
			{"Name" : "conv_layer_5_16_1_0_14_14_6_relu1_input_data_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_layer_5_16_1_0_14_14_6_relu1_output_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_3_fu_1821.grp_forward_conv_1_fu_188", "Parent" : "43", "Child" : ["45", "46"],
		"CDFG" : "forward_conv_1",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Padding_1_fu_262"}],
		"Port" : [
			{"Name" : "conv_layer_5_16_1_0_14_14_6_input_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_Padding_1_fu_262", "Port" : "in_V"}]},
			{"Name" : "conv_layer_5_16_1_0_14_14_6_output_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv_layer_5_16_1_0_14_14_6_W_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_layer_5_16_1_0_14_14_6_inpad_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_Padding_1_fu_262", "Port" : "out_V"}]}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_3_fu_1821.grp_forward_conv_1_fu_188.grp_Padding_1_fu_262", "Parent" : "44",
		"CDFG" : "Padding_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2533", "EstimateLatencyMax" : "2533",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_3_fu_1821.grp_forward_conv_1_fu_188.lenet_mac_muladd_16s_16s_28ns_28_1_1_U23", "Parent" : "44"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_2_fu_1831", "Parent" : "0", "Child" : ["48"],
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
					{"ID" : "48", "SubInstance" : "grp_forward_conv_fu_186", "Port" : "conv_layer_5_6_1_0_32_32_1_input_data_V"}]},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_output_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_forward_conv_fu_186", "Port" : "conv_layer_5_6_1_0_32_32_1_output_data_V"}]},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_W_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_forward_conv_fu_186", "Port" : "conv_layer_5_6_1_0_32_32_1_W_data_V"}]},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_inpad_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_forward_conv_fu_186", "Port" : "conv_layer_5_6_1_0_32_32_1_inpad_data_V"}]},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_relu1_input_data_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_relu1_output_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_2_fu_1831.grp_forward_conv_fu_186", "Parent" : "47", "Child" : ["49", "50"],
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
					{"ID" : "49", "SubInstance" : "grp_Padding_fu_235", "Port" : "in_V"}]},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_output_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_W_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_layer_5_6_1_0_32_32_1_inpad_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_Padding_fu_235", "Port" : "out_V"}]}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_2_fu_1831.grp_forward_conv_fu_186.grp_Padding_fu_235", "Parent" : "48",
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
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_2_fu_1831.grp_forward_conv_fu_186.lenet_mac_muladd_16s_16s_28ns_28_1_1_U3", "Parent" : "48"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_1841", "Parent" : "0", "Child" : ["52"],
		"CDFG" : "forward",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_pool_fu_182"}],
		"Port" : [
			{"Name" : "pool_layer_2_2_1_28_28_6_input_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_forward_pool_fu_182", "Port" : "pool_layer_2_2_1_28_28_6_input_data_V"}]},
			{"Name" : "pool_layer_2_2_1_28_28_6_output_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_forward_pool_fu_182", "Port" : "pool_layer_2_2_1_28_28_6_output_data_V"}]},
			{"Name" : "pool_layer_2_2_1_28_28_6_relu1_input_data_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pool_layer_2_2_1_28_28_6_relu1_output_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_fu_1841.grp_forward_pool_fu_182", "Parent" : "51",
		"CDFG" : "forward_pool",
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
			{"Name" : "pool_layer_2_2_1_28_28_6_input_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pool_layer_2_2_1_28_28_6_output_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_4_fu_1849", "Parent" : "0", "Child" : ["54"],
		"CDFG" : "forward_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "217479", "EstimateLatencyMax" : "217479",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_conv_2_fu_129"}],
		"Port" : [
			{"Name" : "conv_layer_5_120_1_0_5_5_16_input_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_forward_conv_2_fu_129", "Port" : "conv_layer_5_120_1_0_5_5_16_input_data_V"}]},
			{"Name" : "conv_layer_5_120_1_0_5_5_16_output_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_forward_conv_2_fu_129", "Port" : "conv_layer_5_120_1_0_5_5_16_output_data_V"}]},
			{"Name" : "conv_layer_5_120_1_0_5_5_16_W_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_forward_conv_2_fu_129", "Port" : "conv_layer_5_120_1_0_5_5_16_W_data_V"}]},
			{"Name" : "conv_layer_5_120_1_0_5_5_16_inpad_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_forward_conv_2_fu_129", "Port" : "conv_layer_5_120_1_0_5_5_16_inpad_data_V"}]},
			{"Name" : "conv_layer_5_120_1_0_5_5_16_relu1_input_data_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_layer_5_120_1_0_5_5_16_relu1_output_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_4_fu_1849.grp_forward_conv_2_fu_129", "Parent" : "53", "Child" : ["55", "56"],
		"CDFG" : "forward_conv_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "216755", "EstimateLatencyMax" : "216755",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Padding_2_fu_256"}],
		"Port" : [
			{"Name" : "conv_layer_5_120_1_0_5_5_16_input_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_Padding_2_fu_256", "Port" : "in_V"}]},
			{"Name" : "conv_layer_5_120_1_0_5_5_16_output_data_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv_layer_5_120_1_0_5_5_16_W_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_layer_5_120_1_0_5_5_16_inpad_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_Padding_2_fu_256", "Port" : "out_V"}]}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_4_fu_1849.grp_forward_conv_2_fu_129.grp_Padding_2_fu_256", "Parent" : "54",
		"CDFG" : "Padding_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "993", "EstimateLatencyMax" : "993",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_forward_4_fu_1849.grp_forward_conv_2_fu_129.lenet_mac_muladd_16s_16s_28ns_28_1_1_U42", "Parent" : "54"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_forward_1_fu_1859", "Parent" : "0", "Child" : ["58"],
		"CDFG" : "forward_1",
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
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_forward_pool_1_fu_180"}],
		"Port" : [
			{"Name" : "pool_layer_2_2_1_10_10_16_input_data_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_forward_pool_1_fu_180", "Port" : "pool_layer_2_2_1_10_10_16_input_data_V"}]},
			{"Name" : "pool_layer_2_2_1_10_10_16_output_data_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_forward_pool_1_fu_180", "Port" : "pool_layer_2_2_1_10_10_16_output_data_V"}]},
			{"Name" : "pool_layer_2_2_1_10_10_16_relu1_input_data_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pool_layer_2_2_1_10_10_16_relu1_output_data_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_forward_1_fu_1859.grp_forward_pool_1_fu_180", "Parent" : "57",
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
			{"Name" : "pool_layer_2_2_1_10_10_16_output_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lenet_mac_muladd_16s_16s_28ns_28_1_1_U53", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lenet {
		inStream_V_V {Type I LastRead 38 FirstWrite -1}
		outStream_V_V {Type O LastRead -1 FirstWrite 55}
		c1w_V_V {Type I LastRead 40 FirstWrite -1}
		c3w_V_V {Type I LastRead 41 FirstWrite -1}
		c5w_V_V {Type I LastRead 42 FirstWrite -1}
		fcw_V_V {Type I LastRead 43 FirstWrite -1}
		start {Type I LastRead -1 FirstWrite -1}
		c1_W_size_x {Type I LastRead -1 FirstWrite -1}
		c1_W_size_y {Type I LastRead -1 FirstWrite -1}
		c1_W_size_z {Type I LastRead -1 FirstWrite -1}
		c3_W_size_x {Type I LastRead -1 FirstWrite -1}
		c3_W_size_y {Type I LastRead -1 FirstWrite -1}
		c3_W_size_z {Type I LastRead -1 FirstWrite -1}
		c5_W_size_x {Type I LastRead -1 FirstWrite -1}
		c5_W_size_y {Type I LastRead -1 FirstWrite -1}
		c5_W_size_z {Type I LastRead -1 FirstWrite -1}
		fc6_W_size_x {Type I LastRead -1 FirstWrite -1}
		fc6_W_size_y {Type I LastRead -1 FirstWrite -1}
		fc6_W_size_z {Type I LastRead -1 FirstWrite -1}}
	forward_3 {
		conv_layer_5_16_1_0_14_14_6_input_data_V {Type I LastRead 3 FirstWrite -1}
		conv_layer_5_16_1_0_14_14_6_output_data_V {Type IO LastRead 2 FirstWrite 5}
		conv_layer_5_16_1_0_14_14_6_W_data_V {Type I LastRead 8 FirstWrite -1}
		conv_layer_5_16_1_0_14_14_6_inpad_data_V {Type IO LastRead 8 FirstWrite 4}
		conv_layer_5_16_1_0_14_14_6_relu1_input_data_V {Type IO LastRead 5 FirstWrite 3}
		conv_layer_5_16_1_0_14_14_6_relu1_output_data_V {Type IO LastRead 4 FirstWrite 6}}
	forward_conv_1 {
		conv_layer_5_16_1_0_14_14_6_input_data_V {Type I LastRead 3 FirstWrite -1}
		conv_layer_5_16_1_0_14_14_6_output_data_V {Type O LastRead -1 FirstWrite 5}
		conv_layer_5_16_1_0_14_14_6_W_data_V {Type I LastRead 8 FirstWrite -1}
		conv_layer_5_16_1_0_14_14_6_inpad_data_V {Type IO LastRead 8 FirstWrite 4}}
	Padding_1 {
		out_V {Type O LastRead -1 FirstWrite 4}
		in_V {Type I LastRead 3 FirstWrite -1}}
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
		in_V {Type I LastRead 3 FirstWrite -1}}
	forward {
		pool_layer_2_2_1_28_28_6_input_data_V {Type I LastRead 6 FirstWrite -1}
		pool_layer_2_2_1_28_28_6_output_data_V {Type IO LastRead 2 FirstWrite 4}
		pool_layer_2_2_1_28_28_6_relu1_input_data_V {Type IO LastRead 5 FirstWrite 3}
		pool_layer_2_2_1_28_28_6_relu1_output_data_V {Type IO LastRead 4 FirstWrite 6}}
	forward_pool {
		pool_layer_2_2_1_28_28_6_input_data_V {Type I LastRead 6 FirstWrite -1}
		pool_layer_2_2_1_28_28_6_output_data_V {Type O LastRead -1 FirstWrite 4}}
	forward_4 {
		conv_layer_5_120_1_0_5_5_16_input_data_V {Type I LastRead 3 FirstWrite -1}
		conv_layer_5_120_1_0_5_5_16_output_data_V {Type IO LastRead 2 FirstWrite 5}
		conv_layer_5_120_1_0_5_5_16_W_data_V {Type I LastRead 8 FirstWrite -1}
		conv_layer_5_120_1_0_5_5_16_inpad_data_V {Type IO LastRead 8 FirstWrite 4}
		conv_layer_5_120_1_0_5_5_16_relu1_input_data_V {Type IO LastRead 3 FirstWrite 3}
		conv_layer_5_120_1_0_5_5_16_relu1_output_data_V {Type IO LastRead 4 FirstWrite 4}}
	forward_conv_2 {
		conv_layer_5_120_1_0_5_5_16_input_data_V {Type I LastRead 3 FirstWrite -1}
		conv_layer_5_120_1_0_5_5_16_output_data_V {Type O LastRead -1 FirstWrite 5}
		conv_layer_5_120_1_0_5_5_16_W_data_V {Type I LastRead 8 FirstWrite -1}
		conv_layer_5_120_1_0_5_5_16_inpad_data_V {Type IO LastRead 8 FirstWrite 4}}
	Padding_2 {
		out_V {Type O LastRead -1 FirstWrite 4}
		in_V {Type I LastRead 3 FirstWrite -1}}
	forward_1 {
		pool_layer_2_2_1_10_10_16_input_data_V {Type I LastRead 5 FirstWrite -1}
		pool_layer_2_2_1_10_10_16_output_data_V {Type IO LastRead 2 FirstWrite 4}
		pool_layer_2_2_1_10_10_16_relu1_input_data_V {Type IO LastRead 5 FirstWrite 3}
		pool_layer_2_2_1_10_10_16_relu1_output_data_V {Type IO LastRead 4 FirstWrite 6}}
	forward_pool_1 {
		pool_layer_2_2_1_10_10_16_input_data_V {Type I LastRead 5 FirstWrite -1}
		pool_layer_2_2_1_10_10_16_output_data_V {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inStream_V_V { axis {  { inStream_V_V_TDATA in_data 0 16 }  { inStream_V_V_TVALID in_vld 0 1 }  { inStream_V_V_TREADY in_acc 1 1 } } }
	outStream_V_V { axis {  { outStream_V_V_TDATA out_data 1 16 }  { outStream_V_V_TVALID out_vld 1 1 }  { outStream_V_V_TREADY out_acc 0 1 } } }
	c1w_V_V { axis {  { c1w_V_V_TDATA in_data 0 16 }  { c1w_V_V_TVALID in_vld 0 1 }  { c1w_V_V_TREADY in_acc 1 1 } } }
	c3w_V_V { axis {  { c3w_V_V_TDATA in_data 0 16 }  { c3w_V_V_TVALID in_vld 0 1 }  { c3w_V_V_TREADY in_acc 1 1 } } }
	c5w_V_V { axis {  { c5w_V_V_TDATA in_data 0 16 }  { c5w_V_V_TVALID in_vld 0 1 }  { c5w_V_V_TREADY in_acc 1 1 } } }
	fcw_V_V { axis {  { fcw_V_V_TDATA in_data 0 16 }  { fcw_V_V_TVALID in_vld 0 1 }  { fcw_V_V_TREADY in_acc 1 1 } } }
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
