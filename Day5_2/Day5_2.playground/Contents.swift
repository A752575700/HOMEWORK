//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
public class recursion{

    public func PrintNumber(n: Int){
        if n > 1{
            PrintNumber(n - 1)
        }
        println(n)
    }
    public func Fibonaqi(index: Int) ->Int {
        if index > 2 {
            return Fibonaqi(index-1)+Fibonaqi(index-2)
        }
        return 1
    }
    public func biggerFibonaqi(index: Int) -> Int{
        var items=[1,1]
        var i : Int
        for i=2; i < index; i++ {
           items.append(items[i-1]+items[i-2])
        }
        return items[index-1]
    }
}


var Recur = recursion()
Recur.PrintNumber(4)
Recur.biggerFibonaqi(92)
