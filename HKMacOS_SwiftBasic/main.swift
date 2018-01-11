//
//  main.swift
//  HKMacOS_SwiftBasic
//
//  Created by houke on 2018/1/11.
//  Copyright © 2018年 houke. All rights reserved.
//

import Foundation
/*
//输出函数
print("hello world\n hi, my code")

// 1. Swift的基本数据类型
// 整型: Int, Int8, Int16, Int32, Int64
// 浮点型: Double, Float
// 布尔类型: Bool
// 字符型: Character
// 文本类型: String
// 集合类型: Array, Dictionary, Set
// 元组: 创建或者传递一组数据
// 可选类型: 用于处理值缺失的情况

// 2. 常量和变量
// 常量 let
let a:Int = 18
print("a = \(a)")

let charVale:Character = "c"
print("charValur = \(charVale)")

// 变量 var
var scoreOfStudent:Float = 95.5
print("scoreOfStudent = \(scoreOfStudent)")

// 分号
// Swift中不用写上分号来结束语句,但一行中的多个命令可用分号分割
var charA:Character = "A" ; var charB:Character = "b"; print("charA = \(charA)-----charB = \(charB)")

// 常量、变量名的命名规则
//swift可以使用任何字符命名,包括 Unicode 字符,但是常量和变量名不能包含数学符号、箭头,可以使用汉字
let 常量名:String = "常量值"
print("常量名 value = \(常量名)")

let 🍎:String = "苹果"
print("+++\(🍎)")

// 类型安全与推断 -- swift不用在变量后面加（:变量类型）系统可以自动推断
//let ageOfPerson:Int = 19.5

let pageNumber = 10
let aa = "a"
let floatNumber = 9.5

// 数值字面量
// 十进制
let w = 10

//二进制
let b = 0b0110

//八进制
let o = 0o14

//十六进制
let x = 0x333258

print("w= \(w), b = \(b), o = \(o), x = \(x)")


// 数值类型的转化
var intNumber = 10
var floatOfNumber = 95.9

var result = Int(floatOfNumber)
var result2 = Float(intNumber)
print("result = \(result), result2 = \(result2)")


//取 Int16的最大值、最小值
print("\(Int16.max), ") ; print("\(Int16.min)")

//类型别名 typealias
typealias aliasInt16 = Int16
print("\(aliasInt16.max)")

//Bool值
var trueValue = true
var falseValue = false
print("\(trueValue), \(falseValue)")
print(trueValue)
print(falseValue)

//3、元组--就是把多个值组合成一个复合值,而且可以是不同的类型
var infoOfStudent = ("小明", 18, 98.5,"男")
print(infoOfStudent)

//取出元组中的每一个值
print(infoOfStudent.0)
print(infoOfStudent.1)

//在声明元组时，可以给元素取名
var infoOfPerson = (name:"小明", age:18, score:95, gender:"男")
print(infoOfPerson.gender)

//将元组的内容分解成单独的常量或变量
var (name,age,score,gender) = infoOfPerson
print(name)
print(age)

//如果只需要一部分元组值，分解时不需要的部分可以用下划线代替
var (_, age1, _, gender1) = infoOfPerson
print(gender1)
print(age1)

//4、可选类型-- 使用可选类型可以处理值缺失的情况
//Int? -- 暗示常量或变量的值可能是一个是Int类型的 或着是 nil
// 强制解析 -- 我们可以在可选类型常量或变量后面加!强制解析出数据,前提是必须有值，否则会报错
var test:Int? = 16
 
var ageStr = "20"
let ageInt2 = Int(ageStr)
print("----\(ageInt2 as Any)")
print("===\(ageInt2!)")

//可选绑定 -- 使用可选绑定可以判断可选类型是否有值，如果有值,就把值赋给一个临时常量或者变量
//可选绑定可以用在 if 或 while 语句中,对可选类型的值进行判断,并把值赋给一个常量或者变量
let optionalStr = "999a"
if let optionalInt = Int(optionalStr)
{
    print(optionalInt as Any)
}else{
    print("没有值")
}

//断言 -- 在程序运行期间起到断点调试的作用,如果断言里的条件不符合,则出发断言
let stringLength = 1
//设置断言
assert(stringLength > 0, "字符串长度大于零")

*/

//5、基本运算符
//一元运算符操作一个操作数 eg. ! 自增 自减
//二元运算符操作两个对象  eg. + - * / %
//三元（三目）运算符 ? :
//在 swift中赋值运算符没有返回值

//5.1区间运算符
//swift 中多了一个区间运算符 -- 方便表达一个区间的值的运算符

//5.1.1闭区间运算符 (a...b) -- 定义一个包含从 a到 b所有值的区间,b的值大于 a; 在迭代一个区间的值时非常有用
for Index in 1...5{
    print(Index)
}

//5.1.2半闭（开）区间群算符(a..<b) -- 定义一个从 a 到 b 但不包含 b的区间
for index2 in 1..<5{
    print(index2)
}

//5.2空合运算符 ??
// a ?? b -- 将可选类型 a进行空判断,如果 a包含一个值就进行解封,否则就返回一个默认值 b
//这个运算符有两个条件 1、表达式 a必须是可选类型  2、默认值 b的类型必须和a存储的值的类型保持一致
var numberStr = "15s"
var numberY = 10
let numberInt = Int(numberStr) //可选类型
let numberXY = numberInt ?? numberY
print(numberXY)

var numX:Int?
var numY = 11
let numXY = numX ?? numY
print(numXY)

//6、字符串
var str = ""
var strr = String()
str = "hello"
str.append(" world")
str.append("a")
print(str)

for value in str {
    print(value)
}

//字符串可变性 -- 字符串本身没有可变与不可变之分，可变与不可变取决于定义该字符串时是常量 let还是变量 var
let letstr = "letstr"
//letstr.append("aaa") ⚠️报错
print(letstr)

//字符串大小写
var aString = "hhh"
let uppercaseResult = aString.uppercased()
print(uppercaseResult)

let lowercaseResult = uppercaseResult.lowercased()
print(lowercaseResult)

//用 == 来判断两个字符串是否相等
let isequle = aString == uppercaseResult
print(isequle)

//7、集合类型
//7.1 Array
var emptyArray = [Int]()
var emptyArray2:[Int] = Array();
var emptyArray3:Array<Int> = Array();

emptyArray = [1, 2, 3, 4]
print(emptyArray)

var emptyArray4 = [5, 6, 7, 8]
print(emptyArray4)

//正向遍历数组
for element in emptyArray4 {
    print(element)
}
//反向向遍历数组
for element in emptyArray4.reversed() {
    print(element)
}

//正向遍历数组下标和元素
for (index, indexValue) in emptyArray4.enumerated() {
    print(index, indexValue)
}

//反向遍历数组下标和元素
for (index, indexValue) in emptyArray4.enumerated().reversed() {
    print(index, indexValue)
}

//添加元素
emptyArray.append(7)
print(emptyArray)

//插入元素
emptyArray.insert(8, at: 1)
print(emptyArray)

//取出元素
print(emptyArray[0])

let aElement = emptyArray[1]
print(aElement)

//修改数组中的元素
emptyArray[1] = 11
print(emptyArray[1] )
print(emptyArray)

//删除数组中的元素
emptyArray.removeLast()
print(emptyArray)

emptyArray.remove(at: 0)
print(emptyArray)

emptyArray.removeAll(keepingCapacity:true)
print(emptyArray)

emptyArray4.removeAll()
print(emptyArray4)

//字典
var aDict = ["name":"小明", "age":"18", "score":"98.5", "gender":"男"]
print(aDict)

var emptyDictionary = [1:2 , 2:3]
print(emptyDictionary)

var emptyDictionary1:Dictionary<String , Int> = ["type":2 , "name": 3]
print(emptyDictionary1)

//遍历字典
for (key, value) in aDict {
    print(key, value)
}

for (key, value) in aDict.enumerated(){
    print(key, value)
}

for (key, value) in aDict.enumerated().reversed(){
    print(key, value)
}

//添加元素
emptyDictionary[3] = 4
print(emptyDictionary)

// updateValue 可以添加 可以修改
emptyDictionary.updateValue(5, forKey: 4)
print(emptyDictionary)

//控制流
//for循环
for i in 1..<5 {
    print(i)
}

for (index, i) in (1...5).enumerated() {
    print(index, i)
}

for i in (1...10).filter({ $0 % 2 == 0}) {//swift闭包可以省略参数且用$0匿名，第二个参数则用$1，以此类推
    print(i)
    //输出结果为1-10之间的偶数
}

for i in (1...10).filter({i in i<5}){
    print(i)
}

for i in (1...10).filter({ i in i % 2 == 0}) {
    print(i)
    
    //输出结果为1-10之间的偶数
}
print("----------------------")



//while循环
var m = 0
while m < 10 {
    m += 1
    print(m)
}

var index_i = 0
var sum = 0
while index_i < 10 {
    sum +=  index_i
    index_i += 1
}
print(sum)
print("+++++++++++++++++")

//repeat while也就是OC中的do while
// repeat 无论是否成立都要先走一次
repeat {
    m -= 1
    print(m)
} while m > 0

//if ...else
var q = 10
var w = 11
if q > w {
    print("q>w")
}else{
    print("!(q>w)")
}

//switch case --不需使用 break
var char = "a"
switch char {
case "a":
    print("a")
case "b":
    print("b")
default:
    print("other")
}

//switch 匹配区间
var money = 99
switch money {
case 1...100:
    print(money)
    fallthrough//继续执行下一个 case语句
default:
    print("other")
}
print("+++++++++++++++++")

//9函数
// 语法: func 函数名(参数)->返回值 {}
//无参无返回值
func funcName()  {
    print("无参无返回值")
}
funcName()

//无参有返回值
func funcName2() -> String {
    return "无参有返回值"
}
var func2Return = funcName2()
print(func2Return)

//有参有返回值
func funcName3(str:String) -> String {
    return "hello" + str
}
print(funcName3(str: "小明"))

//有参无返回值
func funcName4(str:String)  {
    print(str)
}
funcName4(str: "大名")

//元组作为返回值
func funcName5(str:String) -> (str1:String, str2:String) {
    let string1 = str.uppercased()
    let string2 = str.lowercased()
    
    return (string1, string2)
}
print(funcName5(str: "nnnnn"))

// 10. 闭包
// 语法
/*
 {
 (参数,...)->返回值 in
 执行语句
 }
 */
let block = {
    (str:String)->String in
    return "hello " + str
}
print(block("block"))

let block2 = {
    (intn:Int)->Int in
    
    return intn+5
}
print(block2(3))








































