//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

public class dog {
    public func bark(){
        println("open mouth!")
        println("wang wang!")
        println("shut mouth")
        
    }
    //旺财和小黑不一样的 旺财.color vs black.color不同
    //public v.s. private
    public var color: String
    var isPreg: Bool
    
    //调用class时直接用的function
    public init(){
        self.color = " "
        self.isPreg = false
        
    }
    
}

var Dahuang = dog()
var Wangcai = dog()
Dahuang.bark()
//封装


Dahuang.color = "yellow"
println(Dahuang.color)
Dahuang.isPreg = true
println(Dahuang.isPreg)
println(Wangcai.color)

//继承

public class huntaway : dog{
    public func hunt(){
        println("hunting")
    }
}
var xiaohei = huntaway()
xiaohei.bark()
xiaohei.hunt()




//重载
public class chihuahua : dog{
    override public func bark() {
        println("open mouth!")
        println("MEOW!")
        println("shut mouth")
    }
}
//运算符的重载


var xiaobai = chihuahua()
xiaobai.bark()




//多态:function一样内容不同
public class pig{
    public func bark(){
        println("hengheng")
        
    }
}
var xiaohua = pig()
xiaohua.bark()
xiaohei.bark()














