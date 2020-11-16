class Node {
   var data: Int
   var left: Node?
   var right: Node?
   init(data: Int) {
      self.data = data
   }
}

func preOrderTraversal(node: Node?) {
    guard let node = node else {
        return
    }
    
    print(node.data)
    preOrderTraversal(node: node.left)
    preOrderTraversal(node: node.right)
}

func inOrderTraversal(node: Node?) {
    guard let node = node else {
        return
    }
    
    inOrderTraversal(node: node.left)
    print(node.data)
    inOrderTraversal(node: node.right)
}

func postOrderTraversal(node: Node?) {
    guard let node = node else {
        return
    }
    
    postOrderTraversal(node: node.left)
    postOrderTraversal(node: node.right)
    print(node.data)
}

var root = Node(data: 20)
root.left = Node(data: 10)
root.left?.left = Node(data: 5)
root.left?.right = Node(data: 15)
root.right = Node(data: 30)
root.right?.left = Node(data: 25)

preOrderTraversal(node: root)
print("----------")
inOrderTraversal(node: root)
print("----------")
postOrderTraversal(node: root)
