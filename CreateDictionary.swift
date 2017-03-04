//
//  CreateDictionary.swift
//  
//
//  Created by ac on 3/4/17.
//
//

import Foundation

struct CreateDictionary {
    var dictArr:[[String]] = []
    
    
    mutating func addValue(_ key:String, _ val:String)->String? {
        //print("Hello")
        if !dictArr.isEmpty {
            for idx in 0...dictArr.count - 1  {
                if dictArr[idx][0] == key { return dictArr[idx][1]}
            }
        }
        dictArr.append([key,val])
        return nil
    }
    
    func checkKey(_ key:String)->String? {
        if !dictArr.isEmpty {
            for idx in 0...dictArr.count - 1  {
                if dictArr[idx][0] == key { return dictArr[idx][1]    }
            }
        }
        return nil
    }
    
    func showDict() {
        for elem in dictArr {
            print("Arr\(elem) key:\(elem[0]) val:\(elem[1])")
        }
    }
    
}

