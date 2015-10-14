//
//  main.swift
//  functionalCalc
//
//  Created by iGuest on 10/12/15.
//  Copyright (c) 2015 Jason Ho. All rights reserved.
//

import Foundation

//////////////////////
//Build a Calculator//
//////////////////////
func add(a : Int?, b : Int?) -> Int? {
    if nilCheck([a,b]) {
        return nil
    }
    return a! + b!
}

func sub(a : Int?, b : Int?) -> Int? {
    if nilCheck([a,b]) {
        return nil
    }
    return a! - b!
}

func mul(a : Int?, b : Int?) -> Int? {
    if nilCheck([a,b]) {
        return nil
    }
    return a! * b!
}

func div(a : Int?, b : Int?) -> Int? {
    if nilCheck([a,b]) || b == 0 {
        return nil
    }
    return a! / b!
}

func mathOp(a : Int?, b : Int?, op : (Int?, Int?) -> Int?) -> Int? {
    return op(a, b)
}

//nil check
func nilCheck<T>(objs : [T?]) -> Bool {
    for obj in objs {
        if obj == nil {
            return true
        }
    }
    return false
}

/////////////
//Array Fun//
/////////////
func arrayAdd(nums : [Int]?) -> Int? {
    if nums == nil {
        return nil
    }
    var total = 0
    for n in nums! {
        total += n
    }
    return total
}

func arrayMul(nums : [Int]?) -> Int? {
    if nums == nil {
        return nil
    }
    var total = 0
    for n in nums! {
        total *= n
    }
    return total
}

func arrayCount(nums : [Int]?) -> Int? {
    if nums == nil {
        return nil
    }
    return nums!.count
}

func arrayAvg(nums : [Int]?) -> Int? {
    if nums == nil {
        return nil
    }
    var total = 0
    for n in nums! {
        total += n
    }
    return total / nums!.count
}

func arrayOp(nums : [Int]?, op : ([Int]?) -> Int?) -> Int? {
    return op(nums)
}

//////////
//Points//
//////////

//Tuples
func pointAdd(a : (Int, Int), b : (Int, Int)) -> (Int, Int) {
    return (a.0 + b.0, a.1 + b.1)
}

func pointSub(a : (Int, Int), b : (Int, Int)) -> (Int, Int) {
    return (a.0 - b.0, a.1 - b.1)
}

//Dictionaries
func pointAdd(var a : [String : Int], var b : [String : Int]) -> (Int, Int) {
    if a["x"] == nil {
        a["x"] = 0
    }
    if a["y"] == nil {
        a["y"] = 0
    }
    if b["x"] == nil {
        b["x"] = 0
    }
    if b["y"] == nil {
        b["y"] = 0
    }
    
    return (a["x"]! + b["x"]!, a["y"]! + b["y"]!)
}

func pointSub(var a : [String : Int], var b : [String : Int]) -> (Int, Int) {
    if a["x"] == nil {
        a["x"] = 0
    }
    if a["y"] == nil {
        a["y"] = 0
    }
    if b["x"] == nil {
        b["x"] = 0
    }
    if b["y"] == nil {
        b["y"] = 0
    }
    
    return (a["x"]! - b["x"]!, a["y"]! - b["y"]!)
}

func pointAdd(var a : [String : Double], var b : [String : Double]) -> (Double, Double) {
    if a["x"] == nil {
        a["x"] = 0.0
    }
    if a["y"] == nil {
        a["y"] = 0.0
    }
    if b["x"] == nil {
        b["x"] = 0.0
    }
    if b["y"] == nil {
        b["y"] = 0.0
    }
    
    return (a["x"]! + b["x"]!, a["y"]! + b["y"]!)
}

func pointSub(var a : [String : Double], var b : [String : Double]) -> (Double, Double) {
    if a["x"] == nil {
        a["x"] = 0.0
    }
    if a["y"] == nil {
        a["y"] = 0.0
    }
    if b["x"] == nil {
        b["x"] = 0.0
    }
    if b["y"] == nil {
        b["y"] = 0.0
    }
    
    return (a["x"]! - b["x"]!, a["y"]! - b["y"]!)
}



//when nil is taken as a parameter or an attempt is made to divide by 0 nil is returned.

//Calculator Tests
print("Calculator Tests:\n")
print("add 3 + 5 = \(add(3,5)!)\n")
print("sub 5 - 3 = \(sub(5,3)!)\n")
print("mul 6 * 7 = \(mul(6,7)!)\n")
print("div 12 / 3 = \(div(12,3)!)\n")
print("div 12 / 0 = \(div(12,0))\n")
print("mathOp add 5 + 10 = \(mathOp(5,10,add)!)\n")
print("nil add 5 + nil = \(add(5,nil))\n")
print("\n")

//Array Tests
print("Array Tests:\n")
print("add 3 + 4 + 5 + 6 = \(arrayAdd([3,4,5,6]))\n")
print("count 3, 4, 5, 6 = \(arrayCount([3,4,5,6]))\n")
print("avg 1, 5, 2, 4 = \(arrayAvg([1,5,2,4]))\n")
print("arrayOp avg 1, 5, 2, 4 = \(arrayOp([1,5,2,4], arrayAvg))\n")
print("add nil = \(arrayAdd(nil))\n")
print("\n")

//Point Tests
print("Point Tests:")
print("Tuple add (1, 2) + (3, 4) = \(pointAdd((1,2),(3,4)))\n")
print("Tuple sub (1, 2) - (3, 4) = \(pointSub((1,2),(3,4)))\n")
let point1 = ["x":1,"y":2]
let point2 = ["x":3,"y":4]
let doublePoint = ["x":1.5,"y":2.0]
let missingParamPoint = ["y":2]
print("Dictionary add (1, 2) + (3, 4) = \(pointAdd(point1, point2))\n")
print("Dictionary sub (1, 2) + (3, 4) = \(pointSub(point1, point2))\n")
print("Dictionary add missing x (x, 2) + (3, 4) = \(pointAdd(missingParamPoint, point2))\n")
print("Dictionary add (1.5, 2) + (3, 4) = \(pointAdd(doublePoint, doublePoint))\n")
print("\n")





























