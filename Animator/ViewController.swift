//
//  ViewController.swift
//  Animator
//
//  Created by xiangyu on 15/8/4.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIViewControllerTransitioningDelegate {
    
    
 
    

    @IBOutlet weak var yourView: UIView!
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.transitioningDelegate = self;
   

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
     

    }



 
    


}

