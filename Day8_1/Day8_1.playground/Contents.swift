//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//////////////////////////////////////////////////////////////
//排序
//时间复杂度--研究重点
////最好情况(n：12345） 最差情况（n^2/2） 平均情况
////快排方法：On(log n)
////二分查找：log n
// O(n) y=k(x) 线性时间    在12345
// O(n^2)
// O(log n) 到后面增长没那么多
//空间复杂度--企业级和科研级
//////////////////////////////////////////////////////////

var NumberList = [11, 25,5 , 5, 2, 78, 23, 15]
var NumberList2 = [1, 9, 18, 27 ,35, 77 ,90]
var NumberList3 = [1,3]

public func FindOne (number: Int) -> Bool {
    var i = 0
    for i in NumberList{
        if i == number{
            return true
        }
    }
    return false
    
}
public func ErfenFind (indexA: Int, indexB: Int, number: Int){
    var ifFound = false
    var middle : Int = (indexB + indexA) / 2
    if number == NumberList2[middle]{
        ifFound = true
        
        println("found")
        return
        //return true
    }
    else if indexA == indexB{
        println("not found")
    }
    else if number < NumberList2[middle]{
        ErfenFind(indexA, middle - 1, number)
    }
    else {
        ErfenFind(middle + 1, indexB, number)
    }
}
//插入排序
public func InsertionSort() {
    for var i = 0; i < NumberList.count ; i++ {
        //println("haha")
        for var k = 0; k < i; k++ {
            if NumberList[i] < NumberList[k]{
                NumberList.insert(NumberList[i], atIndex: k)
                NumberList.removeAtIndex(i + 1)
            }
        }
        
    }
}
//冒泡排序
public func BubbleSort(){
    println(NumberList)
    for var k = 0; k < NumberList.count; k++ {
        //第一轮结束后最大的已经排在最右边
        for var i = 0; i < NumberList.count - k - 1 ; i++ {
            if NumberList[i] > NumberList[i+1]{
                var item = NumberList[i]
                NumberList[i] = NumberList[i+1]
                NumberList[i+1] = item
                println(NumberList)
            }
        }
    }
}

public func QuickSort(array: Array<Int>) -> Array<Int> {

    if array.count > 1{
    
        var key = array[0]
        var less : [Int] = []
        var equal : [Int] = []
        var more : [Int] = []
    
    
        for i in array {
            if i < key {
                less.append(i)
            }
            else if i > key {
                more.append(i)
            }
            else {
                equal.append(i)
            }
        }
        return (QuickSort(less) + equal + QuickSort(more))
    }

    else{
        
        return array
    }
    
}

public func merge (array1: Array<Int> , array2: Array<Int>) -> Array<Int> {
    var outcome : [Int] = []
    var inarray1 = array1
    var inarray2 = array2
    while inarray1.count != 0 && inarray2.count != 0 {
        var item0 = inarray1[0]
        var item1 = inarray2[0]
        if item0 > item1{
            outcome.append(item1)
            inarray2.removeAtIndex(0)
        }
        else{
            outcome.append(item0)
            inarray1.removeAtIndex(0)
        }
    }
    if inarray1.count == 0 {
        return outcome + inarray2
    }
    else {
        return outcome + inarray1
    }
}


//println(merge([1], [2]))
//println(merge([1,4,7,8,9,77,99], [0]))

    

public func MergeSort(array: Array<Int>) -> Array<Int> {

    if array.count > 1{
        
        var array1 : [Int] = []
        var array2 : [Int] = []

        for var i = 0; i < array.count/2 ; i++ {
            array1.append(array[i])
        }
        for var i = array.count/2 ; i < array.count ; i++ {
            array2.append(array[i])
        }
        return merge(MergeSort(array1), MergeSort(array2))
        
    }
    return array
    
}



/*    }
    if ((less.count == 0) && (more.count == 0)) {
        return equal
    }
    else if less.count == 0 {
        return (equal + QuickSort(more))
    }
    else if more.count == 0 {
        return (QuickSort(less) + equal)
    }
    return (QuickSort(less) + equal + QuickSort(more))
*/






//FindOne(7)
//FindOne(78)

//ErfenFind(0, 6, 9)
//ErfenFind(0, 4, 18)
//InsertionSort()
//BubbleSort()
println(MergeSort(NumberList))