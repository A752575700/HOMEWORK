

var str = "Hello, playground"


println("Hi")
println(str)
var a=3
var b:Int
b=4
var c:Int=5
//announce variable
let d=4
//announce invariable
var sentence:String="Hi"
var mimi:Double=2.5
//unable to change type


//cannot be announced as a variable without exact type


//optional:！拆箱 ？装箱
/*var optional_k : Int?
println(optional_k)

var optional_l : Int?
println(optional_l)*/


if(a<10) {a=a-1
    println(a)}

var mood = "happy"
var date = "Saturday"

//if 循环
if mood == "happy"{
    println("go to school")
}else if mood ==  "so happy"{
    println("go to cinema")
}else {
    println("stay in bed")}

if mood == "happy" && date != "Sunday" {
    println("go to school")
} else if mood == "so happy" || date == "Saturday" {
    println("go to cinema")
} else {
    println("stay in bed")
}


//for循环
//有利多层

for var i=0; i<10;i++ {
    println(i)
}

println()

//while
//可以改变变化的条件
var j=0
while j<10 {
    println(j)
    j++
}

println()

var Num = [1,2,3]
Num[0]=1
Num.count
Num.append(7)
//Num.removeAtIndex(6)
Num.count

//遍历数组
var item = 2
for item in Num{
    println(item)
}

//字典 箭指对 //Java map
var Bob = ["name":"Bob","age":"12","gender":"male"]
var Tim=
    ["name":"Tim","age":"15","gender":"male"]
var CEO = [Tim, Bob]

println(CEO[0]["name"])





