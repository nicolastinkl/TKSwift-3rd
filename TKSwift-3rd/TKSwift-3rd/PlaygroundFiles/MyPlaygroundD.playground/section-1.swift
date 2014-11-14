// Playground - noun: a place where people can play

import Cocoa



//extension NSString{
//    convenience init(format:NSString,_ args:CVarArgType ){
//        
//    }
//}



class ClassA {        var numA: Int        init(num: Int) {//            numA = num        }
}class ClassB: ClassA {        let numB: Int        override init(num: Int) {        numB = num + 1        super.init(num: num)        }}

let s = ClassA()

