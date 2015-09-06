//
//  NavTrans.swift
//  Animator
//
//  Created by xiangyu on 15/8/11.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit


class NavTrans : NSObject, UINavigationControllerDelegate {
    
    @IBOutlet var navController: UINavigationController?
    func navigationController(navigationController: UINavigationController, interactionControllerForAnimationController animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?{
        
        
        return UIPercentDrivenInteractiveTransition()
    }
    
}