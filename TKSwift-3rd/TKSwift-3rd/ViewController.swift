//
//  ViewController.swift
//  TKSwift-3rd
//
//  Created by tinkl on 8/11/14.
//  Copyright (c) 2014年 ___TINKL___. All rights reserved.
//

import UIKit


class ViewController: UIViewController,TargetAction {

    func onButtonTap() -> () {
        println("Button was tapped")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var button  = TKControl()
        
        button.log()
        
        button.setTarget(self, action: ViewController.onButtonTap, controlEvent: ControlsEvents.TouchUpInside)
        
        println("count : \(button.actions.count)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    func performAction() {
        //you can du somethings with this function
        println("function : \(__FUNCTION__)")
        
    }
    
    @IBAction func seeLog(sender: AnyObject) {
        
        UIAlertView(title: "title", message: "ok", delegate: nil, cancelButtonTitle: "ok").show()
        TKControl().click();
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

