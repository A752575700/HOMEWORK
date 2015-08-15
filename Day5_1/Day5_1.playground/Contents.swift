//: Playground - noun: a place where people can play

import UIKit

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

var str = "Hello, playground"
public class List<T:Equatable>{
    var head: Node<T>? = nil
    var newhead1: Node<T>? = nil
    var newhead2: Node<T>? = nil
    
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
            let newhead = Node(newvalue)
            newhead.next  = head
            head = newhead
            
        }
    }
    public func description()  -> String{
        if head?.value != nil{
            var outcome: String = "\(head!.value)"
            var item = head
            while item?.next != nil{
                item = item!.next
                outcome = outcome + " \(item!.value)"
            }
            return outcome
        }
        return "nil"
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
                print("\(value) not found")
            }
            
        }
    }
    //同时用remove和insert 每个反转 
    public func reverse(){
        if head?.next != nil{
            //newhead1?.value = 5
            newhead1 = Node(head!.value)
            head = head!.next
            while head?.next != nil{
                //newhead2?.value = head!.value
                newhead2 = Node(head!.value)
                newhead2?.next = newhead1
                newhead1 = newhead2
                head = head!.next
            }
            head?.next = newhead1
        }
        
    }
}




var newList = List<Int>()
newList.addTail(5)
newList.addTail(6)
newList.addTail(7)
newList.addTail(8)
print(newList.description())
newList.reverse()
print(newList.description())


var newList2 = List<String>()
newList2.addTail("a")
newList2.addTail("b")
//newList2.addTail("c")
//newList2.addTail("d")
print(newList2.description())
newList2.reverse()
print(newList2.description())