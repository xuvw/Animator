//
//  RotateIn.swift
//  Animator
//
//  Created by xiangyu on 15/8/9.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

public class RotateIn: BaseAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.alpha = 0
        view.layer.transform = CATransform3DMakeRotation( CGFloat(M_PI * (-1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
            
        }
        
    }
}
public class RotateInDownLeft: BaseAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.alpha = 0
        view.setAnchorPoint( CGPointMake(0.0, 1.0))
        view.layer.transform = CATransform3DMakeRotation( CGFloat(M_PI_4 * (1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(-1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
           // view.layer.anchorPoint = p

        }
        
    }
}
public class RotateInDownRight: BaseAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.alpha = 0
        view.setAnchorPoint( CGPointMake(1.0, 1.0))
        view.layer.transform = CATransform3DMakeRotation( CGFloat(M_PI_4 * (-1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(-1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
            // view.layer.anchorPoint = p
            
        }
        
    }
}


public class RotateInUpLeft: BaseAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.alpha = 0
        view.setAnchorPoint( CGPointMake(0.0, 1.0))
        view.layer.transform = CATransform3DMakeRotation( CGFloat(M_PI_4 * (1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
            // view.layer.anchorPoint = p
            
        }
        
    }
}


public class RotateInUpRight: BaseAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.alpha = 0
        view.setAnchorPoint( CGPointMake(1.0, 1.0))
        view.layer.transform = CATransform3DMakeRotation( CGFloat(M_PI_2 * (-1.0)),  CGFloat(0.0),  CGFloat(0.0), CGFloat(1.0))
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
            // view.layer.anchorPoint = p
            
        }
        
    }
}




