//
//  Speed.swift
//  Animator
//
//  Created by xiangyu on 15/8/9.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

public class Speed: BaseAnimate {
    
    override public func play(view: UIView, type: String, duration: Double) {
        let curve = "easeOut"
        let delay = 0.0
        let repeatCount = Float(1.0)
        let layer = view.layer
        
        switch(type){
            
        case "light":
            
            
            var t = CGAffineTransformIdentity;
            t.c = CGFloat(M_PI / 180.0 * -30);
            var t1 = CATransform3DMakeAffineTransform(t);
            t1 = CATransform3DTranslate(t1, 100, 0, 0)
            t1.m34 = -(1.0 / 500.0);
            
            t = CGAffineTransformIdentity;
            t.c = CGFloat(M_PI / 180.0 * 20);
            var t2 = CATransform3DMakeAffineTransform(t);
            t2.m34 = -(1.0 / 500.0);
            
            
            t = CGAffineTransformIdentity;
            t.c = CGFloat(M_PI / 180.0 * -5);
            var t3 = CATransform3DMakeAffineTransform(t);
            t3.m34 = -(1.0 / 500.0);
            
            let t4 = CATransform3DIdentity
            
            
            let morphY = CAKeyframeAnimation()
            morphY.keyPath = "transform"
            morphY.values = [NSValue(CATransform3D: t1), NSValue(CATransform3D: t2), NSValue(CATransform3D: t3), NSValue(CATransform3D: t4)]
            morphY.keyTimes = [0, 0.6, 0.8 , 1]
            morphY.timingFunction = getTimingFunction(curve)
            morphY.duration = CFTimeInterval(duration)
            morphY.repeatCount = repeatCount
            morphY.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            layer.addAnimation(morphY, forKey: "speed")
            
            
        case "out":
            
            
            var t = CGAffineTransformIdentity;
            t.c = CGFloat(M_PI / 180.0 * 30);
            var t1 = CATransform3DMakeAffineTransform(t);
            t1 = CATransform3DTranslate(t1, view.frame.width, 0, 0)
            t1.m34 = -(1.0 / 500.0);
            
            
            Animator.curveAnimate(view, timing: getTimingFunction("easeIn"), duration: duration, endTransform: t1, endOpacity: 0, finish: { (finish) -> Void in
                
            })
            

        default:
            return
        }
        
    }

   
}


