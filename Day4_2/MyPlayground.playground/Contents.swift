

public class Stack {
    //must initialize    
    var items: [Int] = []
    public func push(number: Int){
        self.items.append(number)
    }
    
    //?是声明时候用 ！是调用时候用
    var top : Int? {
        println(items.last)
        return items.last
    }
    
    //could be EMPTY
    public func pop() -> Int? {
    
        if items.count > 0 {
            var toptop = self.top
            println(toptop)
            self.items.removeLast()
            return toptop
        
        }else {
            return nil
        }
    }

}
var Stack1 = Stack()
Stack1.push(8)
Stack1.push(11)
Stack1.push(92)
println(Stack1.top)

println(Stack1.pop()!)
Stack1.pop()
Stack1.pop()
Stack1.pop()
println()

//////////////////////////////////////////////////////////////////////

public class Queue {
    var items: [Int] = []
    public func enqueue(number: Int){
        self.items.append(number)
    }
    public func dequeue()->Int?{
        var first=items[0]
        self.items.removeAtIndex(0)
        return first
    }
    public func description()->String?{
        var outcome: String = " "
        for (var i=0; i < self.items.count;i++){
            var number = dequeue()!
            outcome = outcome + "\(number)"
            enqueue(number)
        }
        println(outcome)
        return outcome
    }
    public func isEmpty()->Bool{
        if description() == " "{
            return true
    }
        return false
    }
    
}

var Queue1 = Queue()
Queue1.enqueue(6)
Queue1.enqueue(7)
Queue1.enqueue(8)
Queue1.description()
println(Queue1.dequeue())
Queue1.description()
println(Queue1.isEmpty())
//print先执行

//////////////////////////////////////////////////////////////////////

//<T:..>用的时候再声明类型
public class Node <T:Equatable>{
    //变量有赋值时可以不用initializer
    var value: T
    var next: Node? = nil
    /*
    public func addValue(x: Int){
        self.value = x
    }*/
    //类里面有value就需要下划线
    init (_ value: T){
        self.value = value
    }
    
    
}

public class List<T:Equatable>{
    var head: Node<T>? = nil
    
    public func addTail(newvalue: T){
        if head == nil{
            head = Node(newvalue)
        }
        else {
            var lastnode = head
            while lastnode?.next != nil {
                lastnode = lastnode?.next
            }
            lastnode?.next = Node(newvalue)
            
        }
    }
    public func addHead(newvalue: T){
        if head == nil{
            head = Node(newvalue)
        }
        else{
            var newhead = Node(newvalue)
            newhead.next  = head
            head = newhead
            
        }
    }
    public func description()  -> String?{
        var outcome: String = "\(head!.value)"
        var item = head
        while item?.next != nil{
            item = item!.next
            outcome = outcome + " \(item!.value)"

        }
        return outcome
    }
    public func removeFirstValue(value: T){
        var item = head
        var isFound = false
        if item!.value == value {
            if item!.next == nil{
                head = nil
            }
            else if item!.next != nil{
                head = item?.next
            }
        }
        else {
            //while item!.next != nil{
            var item2 = item
            while item2!.next != nil{
                item = item2
                item2 = item2!.next
                
                //println(item2!.value)
                if(item2!.value == value){
                    isFound = true
                    break
                }
            }
            if isFound == true {
                item!.next = item2!.next
            }else{
                println("\(value) not found")
            }
            
        }
    }
}

var newList = List<Int>()
newList.addTail(5)
newList.addTail(6)
newList.addHead(7)
println(newList.description()!)
newList.removeFirstValue(5)
println(newList.description()!)
newList.removeFirstValue(5)
println(newList.description()!)


var newListS = List<String>()
newListS.addTail("Tommy")

newListS.addTail("Rocky")

newListS.addTail("Evan")
println(newListS.description()!)
newListS.removeFirstValue("Rocky")
println(newListS.description()!)












