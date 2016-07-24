//
//  SortingAlgorithm.swift
//  SortingAlgorithms
//
//  Created by Mitul Manish on 24/07/2016.
//  Copyright © 2016 Mitul Manish. All rights reserved.
//

import Foundation

class SortingAlgorithm {
    
    static func selectionSort(inout set: [Int]) -> [Int] {
        for i in 0..<set.count - 1 {
            var smallest = set[i]
            var currentSmallestIndex = -1
            for j in (i+1)..<set.count {
                if set[j] < smallest {
                    smallest = set[j]
                    currentSmallestIndex = j
                }
            }
            
            if currentSmallestIndex != -1 {
                let initial = set[i]
                set[i] = smallest
                set[currentSmallestIndex] = initial
            }
            
        }
        return set
    }
    
    static func bubbleSort(inout set: [Int]) -> [Int] {
        for i in 0..<set.count {
            var swapAvailable = false
            for j in 0..<set.count-i-1 {
                if set[j+1] < set[j] {
                    let smallest = set[j+1]
                    set[j+1] = set[j]
                    set[j] = smallest
                    swapAvailable = true
                }
            }
            if !swapAvailable { return set }
            swapAvailable = false
        }
        
        return set
    }
    
    static func insertionSort(inout set: [Int]) -> [Int] {
        for x in 0..<set.count {
            let key = set[x]
            var y = x
            
            while y > -1 {
                if key < set[y] {
                    set.removeAtIndex(y + 1)
                    // drop the key from list..key resides at position y + 1
                    set.insert(key, atIndex: y)
                    // insert the key at correct place, 
                    // pushing the larger number to the next place
                }
                y -= 1
            }
        }
        
        return set
    }
}

