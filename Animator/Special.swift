//
//  Special.swift
//  Animator
//
//  Created by xiangyu on 15/8/10.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

class RollOut: BaseAnimate {
    
    override func play(view: UIView, type: String, duration: Double) {
        let t = CATransform3DMakeTranslation(view.frame.width, 0, 0)
        let t2 = CATransform3DRotate(t, CGFloat(M_PI_2 / 3.0 * 2.0), 0, 0, 1)
        
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: t2, endOpacity: 0.0) { (finished) -> Void in
        };
  
    }


}

class RollIn: BaseAnimate {
    
    override func play(view: UIView, type: String, duration: Double) {
        let t = CATransform3DMakeTranslation(-view.frame.width, 0, 0)
        let t2 = CATransform3DRotate(t, CGFloat(M_PI_2 / 3.0 * -2.0), 0, 0, 1)
        
        view.alpha = 0
        view.layer.transform = t2
        
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finished) -> Void in
        };

    }
    
    
}


class Hinge: BaseAnimate {
    
    override func play(view: UIView, type: String, duration: Double) {
        view.setAnchorPoint(CGPointMake(0.0, 0.0))
        
   
            
            let t1 = CATransform3DIdentity
            let t2 = CATransform3DMakeRotation(CGFloat(M_PI_2 / 9.0 * 8.0), 0.0, 0.0, 1.0)
            let t3 = CATransform3DMakeRotation(CGFloat(M_PI_2 / 9.0 * 6.0), 0.0, 0.0, 1.0)
            let t4 = CATransform3DMakeTranslation(0, 400, 0)
            
            let morphY = CAKeyframeAnimation()
            morphY.keyPath = "transform"
        morphY.values = [
            
                                        NSValue(CATransform3D: t1),
                             NSValue(CATransform3D: t2),
                NSValue(CATransform3D: t3),
                NSValue(CATransform3D: t2),
                NSValue(CATransform3D: t3),
                NSValue(CATransform3D: t4),
        ]
            morphY.keyTimes = [0.0, 0.2, 0.4, 0.6, 0.8 , 1]
            morphY.timingFunction = getTimingFunction("easeInOut")
            morphY.duration = CFTimeInterval(duration)
            morphY.repeatCount = 1
            morphY.beginTime = CACurrentMediaTime() + CFTimeInterval(0)
            view.layer.addAnimation(morphY, forKey: "speed")
        
        
        let animation = CABasicAnimation()
        animation.keyPath = "opacity"
        animation.fromValue = 1
        animation.toValue = 0
        animation.duration = CFTimeInterval(duration * 0.2)
        animation.repeatCount = 1.0
        animation.beginTime = CACurrentMediaTime() + CFTimeInterval(duration * 0.8)
        view.layer.addAnimation(animation, forKey: "flash")
        
        
        
    }
    
}








