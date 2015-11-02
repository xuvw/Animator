//
//  Animator.swift
//  AnimatedTableView
//
//  Created by xiangyu on 15/8/2.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit





// 动画 Util

class Animator: NSObject {

    
    // 用一个 Ani 对象来播放动画
    
    class func animate(view: UIView, ani: Ani){
        let st = ani.startTransform ?? CATransform3DIdentity
        let et = ani.endTransform ?? CATransform3DIdentity
    
        
        view.layer.transform = st
        view.layer.opacity = ani.startOpacity
        let t = ani.timing;
        
        CATransaction.begin()
        CATransaction.setAnimationDuration(ani.duration)
        CATransaction.setAnimationTimingFunction(t)
        CATransaction.commit()
        
        UIView.animateWithDuration(ani.duration,
            delay: 0.0,
            options: ([]),
            animations: {
                view.layer.transform = et
                view.layer.opacity = ani.endOpacity
            },
            completion: { finished in
                
        })
    }
    
  
    
    class func trans(view: UIView,
        startTransform: CATransform3D,
        startOpacity: Float = 1.0,
        duration: NSTimeInterval = 0.4,
        endTransform: CATransform3D = CATransform3DIdentity,
        endOpacity: Float = 1.0){
            
            view.layer.transform = startTransform
            view.layer.opacity = startOpacity
            
            UIView.animateWithDuration(duration,
                delay: 0.0,
                options: (UIViewAnimationOptions.CurveEaseOut),
                animations: {
                    view.layer.transform = endTransform
                    view.layer.opacity = endOpacity
                },
                completion: { finished in
                    
            })
            
            
    }
    
    
    class func curveAnimate(view: UIView,
        timing: CAMediaTimingFunction,
        duration: NSTimeInterval = 0.3,
        endTransform: CATransform3D = CATransform3DIdentity,
        endOpacity: Float = 1.0,
        finish:  ((Bool) -> Void)? ){
            
            let t = timing;
            
            CATransaction.begin()
            CATransaction.setAnimationDuration(duration)
            CATransaction.setAnimationTimingFunction(t)
            CATransaction.commit()
            
            
            UIView.animateWithDuration(duration,
                delay: 0.0,
                options: ([]),
                animations: {
                    view.layer.transform = endTransform
                    view.layer.opacity = endOpacity
                },
                completion: { finished in
                    finish!(finished)
            })
            
    }
    

    
    // 自定义曲线，放大和alpha同步的动画

    class func curveAnimate(view: UIView,
        timing: CAMediaTimingFunction,
        startTransform: CATransform3D,
        startOpacity: Float = 1.0,
        duration: NSTimeInterval = 0.4,
        endTransform: CATransform3D = CATransform3DIdentity,
        endOpacity: Float = 1.0){
            
            view.layer.transform = startTransform
            view.layer.opacity = startOpacity
            let t = timing;
            
            CATransaction.begin()
            CATransaction.setAnimationDuration(duration)
            CATransaction.setAnimationTimingFunction(t)
            CATransaction.commit()
            
            
            UIView.animateWithDuration(duration,
                delay: 0.0,
                options: ([]),
                animations: {
                    view.layer.transform = endTransform
                    view.layer.opacity = endOpacity
                },
                completion: { finished in
                    
            })
            
            
    }
    
    
    // 自定义曲线，放大和alpha不同步的动画
    class func curveAsyncAnimate(view: UIView,
        timing: CAMediaTimingFunction,
        startTransform: CATransform3D,
        startOpacity: Float = 1.0,
        duration: NSTimeInterval = 0.4,
        endTransform: CATransform3D = CATransform3DIdentity,
        endOpacity: Float = 1.0){
            
            
            view.layer.transform = startTransform
            view.layer.opacity = startOpacity
            let t = timing;
            
            CATransaction.begin()
            CATransaction.setAnimationDuration(duration)
            CATransaction.setAnimationTimingFunction(t)
            CATransaction.commit()
            
            
            UIView.animateWithDuration(duration,
                delay: 0.0,
                options: ([]),
                animations: {
                    view.layer.transform = endTransform
                },
                completion: { finished in
                    
            })
            
            UIView.animateWithDuration(0.2,
                delay: 0.0,
                options: ([]),
                animations: {
                    view.layer.opacity = endOpacity
                },
                completion: { finished in
                    
            })
            
            
    }
    
    

    class func transFrom(view: UIView, transform : CATransform3D){
        trans(view, startTransform: transform, startOpacity: 0.8, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1);
    }
   
    
    class func customTimingTrans(view: UIView, time: String, transform : CATransform3D) {
        curveAnimate(view, timing: getTimingFunction(time), startTransform: transform, startOpacity: 0, duration: 1.2, endTransform: CATransform3DIdentity, endOpacity: 1)
    }
    
    
    class func getTimingFunction(curve: String) -> CAMediaTimingFunction {
        switch curve {
        case "easeIn":
            return CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        case "easeOut":
            return CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        case "easeInOut":
            return CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        case "linear":
            return CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        case "spring":
            return CAMediaTimingFunction(controlPoints: 0.5, 1.1+Float(1/3), 1, 1)
        case "easeInSine":
            return CAMediaTimingFunction(controlPoints: 0.47, 0, 0.745, 0.715)
        case "easeOutSine":
            return CAMediaTimingFunction(controlPoints: 0.39, 0.575, 0.565, 1)
        case "easeInOutSine":
            return CAMediaTimingFunction(controlPoints: 0.445, 0.05, 0.55, 0.95)
        case "easeInQuad":
            return CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53)
        case "easeOutQuad":
            return CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94)
        case "easeInOutQuad":
            return CAMediaTimingFunction(controlPoints: 0.455, 0.03, 0.515, 0.955)
        case "easeInCubic":
            return CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19)
        case "easeOutCubic":
            return CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1)
        case "easeInOutCubic":
            return CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1)
        case "easeInQuart":
            return CAMediaTimingFunction(controlPoints: 0.895, 0.03, 0.685, 0.22)
        case "easeOutQuart":
            return CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1)
        case "easeInOutQuart":
            return CAMediaTimingFunction(controlPoints: 0.77, 0, 0.175, 1)
        case "easeInQuint":
            return CAMediaTimingFunction(controlPoints: 0.755, 0.05, 0.855, 0.06)
        case "easeOutQuint":
            return CAMediaTimingFunction(controlPoints: 0.23, 1, 0.32, 1)
        case "easeInOutQuint":
            return CAMediaTimingFunction(controlPoints: 0.86, 0, 0.07, 1)
        case "easeInExpo":
            return CAMediaTimingFunction(controlPoints: 0.95, 0.05, 0.795, 0.035)
        case "easeOutExpo":
            return CAMediaTimingFunction(controlPoints: 0.19, 1, 0.22, 1)
        case "easeInOutExpo":
            return CAMediaTimingFunction(controlPoints: 1, 0, 0, 1)
        case "easeInCirc":
            return CAMediaTimingFunction(controlPoints: 0.6, 0.04, 0.98, 0.335)
        case "easeOutCirc":
            return CAMediaTimingFunction(controlPoints: 0.075, 0.82, 0.165, 1)
        case "easeInOutCirc":
            return CAMediaTimingFunction(controlPoints: 0.785, 0.135, 0.15, 0.86)
        case "easeInBack":
            return CAMediaTimingFunction(controlPoints: 0.6, -0.28, 0.735, 0.045)
        case "easeOutBack":
            return CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)
        case "easeInOutBack":
            return CAMediaTimingFunction(controlPoints: 0.68, -0.55, 0.265, 1.55)
        case "ease":
            return CAMediaTimingFunction(controlPoints: 0.25, 0.1, 0.25, 1)
            
//            
//                - name: easeInElastic
//            css:  no
//            - name: easeOutElastic
//            css:  no
//            - name: easeInOutElastic
//            css:  no
//            - name: easeInBounce
//            css:  no
//            - name: easeOutBounce
//            css:  no
//            - name: easeInOutBounce
//            css:  no
//
//            
        default:
            return CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
        }
    }
    

}




