//
//  main.swift
//  TKSwift-3rd
//
//  Created by tinkl on 14/11/14.
//  Copyright (c) 2014年 ___TINKL___. All rights reserved.
//

import Foundation
import UIKit

/*!
*  @author tinkl, 14-11-14 11:11:48
*
*  <#Description#>
*
*  @since <#version number#>
*/
class MyApplication: UIApplication {
    override func sendEvent(event: UIEvent) {
    
        super.sendEvent(event)
    
        println("Event sent: \(event)");
    }
}

UIApplicationMain(C_ARGC, C_ARGV,
    NSStringFromClass(MyApplication), NSStringFromClass(AppDelegate))

