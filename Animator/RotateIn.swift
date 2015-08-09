//
//  RotateIn.swift
//  Animator
//
//  Created by xiangyu on 15/8/9.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

class RotateIn: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.alpha = 0
        view.layer.transform = CATransform3DMakeRotation( CGFloat(M_PI * (-1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
            
        }
        
    }
}
class RotateInDownLeft: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.alpha = 0
        let p =  view.layer.anchorPoint
        view.layer.anchorPoint = CGPointMake(0.0, 1.0)
        view.layer.transform = CATransform3DMakeRotation( CGFloat(M_PI_4 * (1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(-1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
           // view.layer.anchorPoint = p

        }
        
    }
}
class RotateInDownRight: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.alpha = 0
        let p =  view.layer.anchorPoint
        view.layer.anchorPoint = CGPointMake(1.0, 1.0)
        view.layer.transform = CATransform3DMakeRotation( CGFloat(M_PI_4 * (-1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(-1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
            // view.layer.anchorPoint = p
            
        }
        
    }
}

class RotateInUpLeft: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.alpha = 0
        let p =  view.layer.anchorPoint
        view.layer.anchorPoint = CGPointMake(0.0, 1.0)
        view.layer.transform = CATransform3DMakeRotation( CGFloat(M_PI_4 * (1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(-1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
            // view.layer.anchorPoint = p
            
        }
        
    }
}


class RotateInUpRight: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.alpha = 0
        let p =  view.layer.anchorPoint
        view.layer.anchorPoint = CGPointMake(0.0, 1.0)
        view.layer.transform = CATransform3DMakeRotation( CGFloat(M_PI_2 * (-1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(-1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
            // view.layer.anchorPoint = p
            
        }
        
    }
}




