// Playground - noun: a place where people can play

import Cocoa



/*
    1. 基本常用技能
    2. 需要用到的奇葩技能
    3. 有处理优势的技能
*/


func callMe() {
    //...
    print("Come on baby..")}

/*!
<#Description#>

:param: obj <#obj description#>
*/
func callMeWithParam(obj: AnyObject!) { //...
    }

/////
func turnByAngle(theAngle: Int, speed: Float) { //...
    }


let someMethod =  Selector("callMe")

let anotherMethod = Selector("callMeWithParam:")

let method = Selector("turnByAngle:speed:")

func aMethod(external internalss: String) { //...
    
}
let s = Selector("aMethodWithExternal:")

s.hashValue

s.getMirror()


class BankAccount {
    @objc private var blance : Double = 0.0
    
    
//    let depositor: BankAccount -> (Double) -> ()
    
//    let depositor: BankAccount -> (Double) -> ()
    
    
    func deposit(amount:Double)
    {
        blance+=amount
    }
    
}

let account = BankAccount();

account

account.deposit(100);

let bankMethod = BankAccount.deposit;
let some = bankMethod(account);

some(100)

BankAccount.deposit(account)(100) // balance is now 300


protocol TargetAction {
    func performAction()
}



struct TargetActionWrapper<T: AnyObject> : TargetAction {
    weak var target: T?
    let action: (T) -> () -> ()
    
    func performAction() -> () {
        if let t = target {
            action(t)()
        }
    }
}



struct IntStack {
    var items = [Int]()
    mutating func push(item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}


protocol Togglable {
        mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case Off, On
    mutating func toggle() {
    switch self {
case Off:
    self = On
case On:
        self = Off
    }
    }
}



enum ControlEvent {
    case TouchUpInside
    case ValueChanged
    // ...
}






