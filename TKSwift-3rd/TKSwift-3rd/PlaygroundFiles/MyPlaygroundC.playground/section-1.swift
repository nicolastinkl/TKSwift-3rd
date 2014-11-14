// Playground - noun: a place where people can play

import Cocoa

var level : Int?

var one  = 3

var currentValue = level ?? one

currentValue



func TK<T>(optional:T?,defaultValue : @autoclosure ()->T) ->T
{
    
    switch optional
    {
    case .Some(let value):
        return value
        
    case .None:
        return defaultValue()
        
    }
    
}

var someOne:String = "come on"
var someTwo:String = "come on baby"

//let some = TK(optional: someOne) (someTwo)



