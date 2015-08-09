//
//  RotateIn.swift
//  Animator
//
//  Created by xiangyu on 15/8/9.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

class RotateOut: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        let transform = CATransform3DMakeRotation( CGFloat(M_PI * (-1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(-1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: transform, endOpacity: 0.0) { (finish) -> Void in
            
        }
        
    }
}
class RotateOutDownLeft: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        let p =  view.layer.anchorPoint
        view.setAnchorPoint (CGPointMake(0.0, 1.0))
        let transform = CATransform3DMakeRotation( CGFloat(M_PI_4 * (1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: transform, endOpacity: 0.0) { (finish) -> Void in
            // view.layer.anchorPoint = p
            
        }
        
    }
}
class RotateOutDownRight: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        let p =  view.layer.anchorPoint
        view.setAnchorPoint (CGPointMake(1.0, 1.0))
        let transform = CATransform3DMakeRotation( CGFloat(M_PI_4 * (-1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(-1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: transform, endOpacity: 0.0) { (finish) -> Void in
            // view.layer.anchorPoint = p
            
        }
        
    }
}

class RotateOutUpLeft: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        let p =  view.layer.anchorPoint
        view.setAnchorPoint (CGPointMake(0.0, 1.0))
        let transform = CATransform3DMakeRotation( CGFloat(M_PI_4 * (1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(-1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: transform, endOpacity: 0.0) { (finish) -> Void in
            // view.layer.anchorPoint = p
            
        }
        
    }
}


class RotateOutUpRight: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        let p =  view.layer.anchorPoint
        view.setAnchorPoint (CGPointMake(1.0, 1.0))
        let transform = CATransform3DMakeRotation( CGFloat(M_PI_2 * (1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: transform, endOpacity: 0.0) { (finish) -> Void in
            // view.layer.anchorPoint = p
            
        }
        
    }
}




