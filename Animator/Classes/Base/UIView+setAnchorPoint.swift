//
//  UIView+Animation.swift
//  Animator
//
//  Created by xiangyu on 15/8/7.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit



extension UIView {
    
    func setAnchorPoint(anchorPoint: CGPoint){
        let oldOrigin = self.frame.origin
        self.layer.anchorPoint = anchorPoint
        let newOrigin = self.frame.origin
        let transition = CGPointMake( newOrigin.x - oldOrigin.x, newOrigin.y - oldOrigin.y)
        self.center = CGPointMake(self.center.x - transition.x, self.center.y - transition.y)
    }
    
    func setDefaultAnchorPoint(){
        self.setAnchorPoint(CGPointMake(0.5, 0.5))
    }
}



