# Recursive Enumerations in Swift - A binary tree data structure
A recursive enumeration has another instance of the same type as an associated value for one or more of the enumeration cases. Enumerations are value types. Swift compiler inserts a layer of indirection when it works with recursive enumerations. This is indicated by the indirect keyword. Xcode prompts for indirect keyword if it detects indirection.

```Swift
indirect enum Tree {
    
    case Empty
    case Node(T, left: Tree, right: Tree)
}

```
