// Playground - noun: a place where people can play

import Cocoa


protocol MyProtocol {    class func foo() -> String}struct MyStruct: MyProtocol {
    static func foo() -> String {        return "MyStruct"
    }}enum MyEnum: MyProtocol {    static func foo() -> String {    return "MyEnum" }}class MyClass: MyProtocol {    class func foo() -> String {    return "MyClass" }}


class someClass {
            class func  one() {
                println("OK")
            }
}


someClass.one()


