# GMS2Node
扩展gml数据结构，增加node节点数据

树状节点

```ts
class Node {
    // 父节点
    parent: Node
    // 子节点集合
    children: Node[]
    // 自定义属性
    userData: [[key:string]:any]
}
```

可以参考html文档节点，添加id或class，方便查找