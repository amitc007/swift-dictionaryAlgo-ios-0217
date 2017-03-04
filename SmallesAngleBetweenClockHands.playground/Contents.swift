//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

func timeAngle(_ time:String) {
    let hrs = time.substring(to: time.index(time.startIndex, offsetBy: 2))
    let min = time.substring(from: time.index(time.endIndex, offsetBy: -2))
    
    let smallHand = Int(hrs)!
    let longHandMins = Int(min)!
    let smallHandMins = (smallHand%12)*5
    let diff = abs(smallHandMins - longHandMins)
    var angle = 0
    if (diff <= 30) {
        angle = diff*6
        
    } else {
        angle = (60 - diff)*6
    }
    print("Smallest angle between clock hands is \(angle)")
}


timeAngle("2340")
timeAngle("2315")
timeAngle("11:15")
