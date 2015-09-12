//
//  ViewController.swift
//  Animator
//
//  Created by xiangyu on 15/8/4.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var yourView: UIView!
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let f = FadeInDownEffect()
        f.play(myView)

    }



 
    


}

