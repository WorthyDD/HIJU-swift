//
//  ViewController.swift
//  HIJU
//
//  Created by 武淅 段 on 16/5/24.
//  Copyright © 2016年 武淅 段. All rights reserved.
//

import UIKit

let kLoginBool = "is_logged_in"
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.checkLogin()
        
    
    }



    func checkLogin() {
        if NSUserDefaults.standardUserDefaults().boolForKey(kLoginBool){
            print("已登录")
        }
        else{
            
            let vc = (self.storyboard?.instantiateViewControllerWithIdentifier("loginVC"))! as UIViewController
            self .presentViewController(vc, animated: true, completion: nil)
        }
    }
}

