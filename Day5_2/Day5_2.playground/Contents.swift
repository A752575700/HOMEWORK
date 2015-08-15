//: Playground - noun: a place where people can play

//import Cocoa

//var str = "Hello, playground"
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
    public func jiecheng (number: Int) -> Int{
        if number > 1{
        return    jiecheng(number-1)*number
        }
        return 1
    }
    public func chengfang(a: Int, b: Int) -> Int {
        if b > 1{
            return chengfang(a, b:b - 1) * a
        }
        return a
    }
    public func absoluteValue (a: Int) -> Int{
        if a > 0{
            return a
        }
        else{
            return 0 - a
        }
    }
    
    public func ZuiDaGongYueShu(a: Int, b: Int) -> Int{
        
        if a > b {
            return ZuiDaGongYueShu(a - b, b: b)
        }
        else if a < b {
            return ZuiDaGongYueShu(a, b: b-a)
        }
        else {
            return a
        }
    }
    public func solveHanuota(number: Int) -> Int{
        if number > 1{
            return solveHanuota(number-1) * 2 + 1
        }
        return 1
        //return chengfang(2, n)-1
    }
    public func everyStep(number: Int, from: String, buffer: String, to: String) {
        //var outcome: String = " "
        if number == 1 {
            println("move disk" + "1" + " from " + from  + " to " + to +  " throw " + buffer)
            //return 1
        }else{
            everyStep(number - 1, from: from, buffer: to, to: buffer)
            //println("move disk" + "\(number)" + " from A to C throw B" )
            println("move disk" + "\(number)" + " from " + from  + " to " + to +  " throw " + buffer)
            //return solveHanuota(number-1) * 2 + 1
            everyStep(number - 1,from: buffer , buffer: from , to: to )
        }
        
    }
}

var Recur = recursion()
//Recur.PrintNumber(4)
//Recur.biggerFibonaqi(92)
//Recur.jiecheng(0)
println(Recur.chengfang(3,b: 4))

println(Recur.ZuiDaGongYueShu(99, b:9 ))
println(Recur.solveHanuota(5))

//HW:every step


Recur.everyStep(5, from: "A", buffer: "B" , to: "C")

