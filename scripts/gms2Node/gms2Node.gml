// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// 定义节点id
global.nodeId = 0;

function GMS2Node() constructor {
	// id
	id = global.nodeId; global.nodeId++;
	// 名称
	name = noone;
	// 父节点
	parent = noone;
	// 子节点
	children = ds_list_create();
	// 子节点名称映射
	nameMap = ds_map_create();
	// 子节点映射
	childrenMap = ds_map_create();
	
	// ------------------ 方法 --------------------
	// 设置名称
	static setName = function(_name) {
	}
	// 设置父节点
	static setParent = function(_parent) {
	}
	// 添加子节点
	static addNode = function(node) {
	}
	// 移除子节点
	static removeNode = function(node) {
	}
}

function gms2NodeSetName(node, _name) {
	with(node) {
		if parent {
			ds_map_delete(parent.nameMap, name);
			ds_map_add(parent.nameMap, _name, node);
		}
		name = _name;
	}
}

node = new GMS2Node();
node = new GMS2Node();
node = new GMS2Node();
node = new GMS2Node();
gms2NodeSetName(node, "sgf");