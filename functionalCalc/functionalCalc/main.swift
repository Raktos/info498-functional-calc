//
//  main.swift
//  functionalCalc
//
//  Created by iGuest on 10/12/15.
//  Copyright (c) 2015 Jason Ho. All rights reserved.
//

import Foundation

//TODO optionals everywhere

//////////////////////
//Build a Calculator//
//////////////////////
func add(a : Int, b : Int) -> Int {
    return a + b
}

func sub(a : Int, b : Int) -> Int {
    return a - b
}

func mul(a : Int, b : Int) -> Int {
    return a * b
}

func div(a : Int, b : Int) -> Int? {
    if b != 0 {
        return a / b
    }
    return nil
}

func mathOp(a : Int, b : Int, op : (Int, Int) -> Int) -> Int? {
    return op(a, b)
}

/////////////
//Array Fun//
/////////////
func arrayAdd(nums : [Int]) -> Int {
    var total = 0
    for n in nums {
        total += n
    }
    return total
}

func arrayMul(nums : [Int]) -> Int {
    var total = 0
    for n in nums {
        total *= n
    }
    return total
}

func arrayCount(nums : [Int]) -> Int {
    return nums.count
}

func arrayAvg(nums : [Int]) -> Int {
    var total = 0
    for n in nums {
        total += n
    }
    return total / nums.count
}

func arrayOp(nums : [Int], op : ([Int]) -> Int) -> Int {
    return op(nums)
}

//////////
//Points//
//////////

//TODO Dictionaries
func pointAdd(a : (x : Int, y : Int), b : (x : Int, y : Int)) -> (Int, Int) {
    return (a.x + b.x, a.y + b.y)
}

func pointSub(a : (x : Int, y : Int), b : (x : Int, y : Int)) -> (Int, Int) {
    return (a.x - b.x, a.y - b.y)
}