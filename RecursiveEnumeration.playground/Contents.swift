// Recursive enumerations
// Use indirect keyword to indicate that the enum is recursive
indirect enum Tree<T:Comparable>: CustomStringConvertible {
    
    case Empty
    case Node(T, left: Tree, right: Tree)
    
    // Insert a new value in the tree
    func insert(newValue: T) -> Tree {
        switch self {
            
        case .Empty:
            return Tree.Node(newValue, left: Tree.Empty, right: Tree.Empty)
            
        case let .Node(value, left, right):
            if newValue > value {
                return Tree.Node(value, left: left, right: right.insert(newValue))
            } else {
                return Tree.Node(value, left: left.insert(newValue), right: right)
            }
        }
    }
    
    var depth: Int {
        switch self {
        case .Empty:
            return 0
        case let .Node(_, left, right):
            return 1 + max(left.depth, right.depth)
        }
    }
    
    var description: String {
        switch self {
        case .Empty:
            return ""
        case let .Node(value, left, right):
            return "\(left) \(value) \(right)" // Traverse inorder
        }
    }
}

var numberTree = Tree<Int>.Empty
numberTree
numberTree.depth

numberTree = numberTree.insert(10)
numberTree.depth

numberTree = numberTree.insert(7)
numberTree.depth

numberTree = numberTree.insert(21)
numberTree = numberTree.insert(9)
numberTree = numberTree.insert(14)
numberTree = numberTree.insert(19)
numberTree = numberTree.insert(3)
numberTree
numberTree.depth

var wordTree = Tree<String>.Empty
wordTree = wordTree.insert("now")
wordTree = wordTree.insert("is")
wordTree = wordTree.insert("the")
wordTree = wordTree.insert("time")
wordTree = wordTree.insert("for")
wordTree = wordTree.insert("all")
wordTree = wordTree.insert("good")
wordTree = wordTree.insert("men")
wordTree = wordTree.insert("to")
wordTree = wordTree.insert("come")
wordTree = wordTree.insert("the")
wordTree = wordTree.insert("aid")
wordTree = wordTree.insert("of")
wordTree = wordTree.insert("their")
wordTree = wordTree.insert("country")

wordTree.depth
