import Cocoa

class LLNode<T: Equatable>: Equatable {
  public var value: T
  public var next: LLNode?
  public var previous: LLNode?
  init(value: T) {
    self.value = value
  }
  static func ==(lhs: LLNode, rhs: LLNode) -> Bool {
    return lhs.value == rhs.value &&
      lhs.next == rhs.next
  }
}

class LinkedList<T: Equatable> {
  var head: LLNode<T>?
  var tail: LLNode<T>?
  var count = 0
  var isEmpty: Bool {
    return head == nil
  }

  func append(value: T){
    let node = LLNode(value: value)

    tail?.next = node
    tail = node

    if isEmpty {
      head = node
    }

    count += 1
  }
    
    func printAll() {
      var current: LLNode! = self.head
      while current != nil {
        print("Node: \(current.value)")
        current = current.next
      }
    }

}

var test = LinkedList<Int>()
test.append(value: 1)
test.append(value: 2)
test.append(value: 3)
test.append(value: 4)
test.append(value: 5)

func arrayAnsw(list: LinkedList<Int>)-> [Int]{
    var ans = [Int]()
    var current = list.head
      while current != nil {
        ans.append(current!.value)
        current = current?.next
      }
    return ans
    }

print(arrayAnsw(list: test))
