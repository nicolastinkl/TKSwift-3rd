// Playground - noun: a place where people can play

import Cocoa

import Foundation

var number = 12

number.hashValue



enum result{
    case Success(String)
    case Fail(NSError)
}


func dosomethings(params:AnyObject) -> result
{
    var succ = true
    
    
    if succ
    {
        return result.Success("OK")
    }
    else
    {
        let error = NSError(domain:"fail",code:1,userInfo:nil)
        return result.Fail(error)
    }
}


let resultss:result =  dosomethings("OK")
