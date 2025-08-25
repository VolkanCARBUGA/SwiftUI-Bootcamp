import UIKit

var greeting = "Hello, playground"
var isStudent = true
var height:Double = 1.80
var age:Int = 25
var tupleExample:(String,Int)=("ayşe",34)
var array1:[String] = ["a","b","c","d"]
array1.map {item in
    item.uppercased()
    
}
var array1Result = [String]()

for item in array1{
    let result = item.uppercased()
    array1Result.append(result)
    
}
array1==array1Result
print(array1)
