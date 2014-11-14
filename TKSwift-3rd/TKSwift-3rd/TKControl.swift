//
//  TKControl.swift
//  TKSwift-3rd
//
//  Created by tinkl on 11/11/14.
//  Copyright (c) 2014年 ___TINKL___. All rights reserved.
//

import Foundation

/*!
swift控件实现原理
*/
protocol TargetAction{
    func performAction()
}

struct TargetActionWrapper<T:AnyObject>:TargetAction {
    
    weak var target : T?
    
    var action:(T)->()->()
    
    func performAction() {
        
        if let t  = target{
            action(t)() // real return a function ()->()
        }
    }
}


enum ControlsEvents{
    case TouchUpInside
    case ValueChanged
    case TouchDownOutside
}


class TKControl {
    
    var actions = [ControlsEvents:TargetAction]()
    
    //settargetaction Target/Action/ControlStatus
    func setTarget<T : AnyObject>(target:T,action:(T)->()->(),controlEvent:ControlsEvents)
    {
        let item = TargetActionWrapper(target: target, action: action)
        actions[controlEvent] = item
    }
    
    //add events
    func performActionForControlEvent(controlEvent: ControlsEvents) {
        actions[controlEvent]?.performAction()
    }
    
    //remove events
    func removeTargetForControlEvent(controlEvent: ControlsEvents) {
        actions[controlEvent] = nil
    }
    
    func click()
    {
        
    }
    
    func log()
    {
       // println("some body jiekuan summary")
    }
}

