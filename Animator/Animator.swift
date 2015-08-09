//
//  Animator.swift
//  AnimatedTableView
//
//  Created by xiangyu on 15/8/2.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit


class BaseAnimate {
    
    // 所有 Animate.css 效果的基类
    
    
    func play(view: UIView, type: String, duration: Double){
    }
    
    func play(views: Array<UIView>, type: String, duration: Double){
        for view in views{
            play(view, type: type, duration: duration)
        }
    }
    
    func play(view: UIView){
        self.play(view, type: "", duration: 0.3)
    }
    
    func play(view: UIView,  duration: Double){
        self.play(view, type: "", duration: duration)
    }
    
    func play(views: Array<UIView>){
        self.play(views, type: "", duration: 0.3)
    }
    
    func play(views: Array<UIView>,  duration: Double){
        self.play(views, type: "", duration: duration)
    }

    
    func getTimingFunction(curve: String) -> CAMediaTimingFunction {
        return Animator.getTimingFunction(curve)
    }
}



class ScalaAnimate:  BaseAnimate {
    override func play(view: UIView, type: String, duration: Double) {
        view.transform = CGAffineTransformMakeScale(0.2, 0.2)
        view.layer.opacity = 0.2;
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.transform = CGAffineTransformIdentity;
            view.layer.opacity = 1;
        });
    }
}


class Keyframe: NSObject {
    var opa: Float?;
    var transform: CATransform3D?;
    var timing: CAMediaTimingFunction?;
    var precent: Float?;
}




// 动画属性 Model

class Ani: NSObject {
    var duration: Double = 0.6
    var startOpacity: Float = 0.8
    var endOpacity: Float = 1.0
    var startTransform: CATransform3D?
    var endTransform: CATransform3D?
    var timing:CAMediaTimingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
    
}

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
            options: (nil),
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
                options: (nil),
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
                options: (nil),
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
                options: (nil),
                animations: {
                    view.layer.transform = endTransform
                },
                completion: { finished in
                    
            })
            
            UIView.animateWithDuration(0.2,
                delay: 0.0,
                options: (nil),
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
    
    
/*
    
    func animatePreset() {
        alpha = 0.99
        if animation == "" {
            return
        }
        
        switch animation {
        case "slideLeft":
            x = 300*force
        case "slideRight":
            x = -300*force
        case "slideDown":
            y = -300*force
        case "slideUp":
            y = 300*force
        case "squeezeLeft":
            x = 300
            scaleX = 3*force
        case "squeezeRight":
            x = -300
            scaleX = 3*force
        case "squeezeDown":
            y = -300
            scaleY = 3*force
        case "squeezeUp":
            y = 300
            scaleY = 3*force
        case "fadeIn":
            opacity = 0
        case "fadeOut":
            animateFrom = false
            opacity = 0
        case "fadeOutIn":
            let animation = CABasicAnimation()
            animation.keyPath = "opacity"
            animation.fromValue = 1
            animation.toValue = 0
            animation.timingFunction = getTimingFunction(curve)
            animation.duration = CFTimeInterval(duration)
            animation.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            animation.autoreverses = true
            layer.addAnimation(animation, forKey: "fade")
        case "fadeInLeft":
            opacity = 0
            x = 300*force
        case "fadeInRight":
            x = -300*force
            opacity = 0
        case "fadeInDown":
            y = -300*force
            opacity = 0
        case "fadeInUp":
            y = 300*force
            opacity = 0
        case "zoomIn":
            opacity = 0
            scaleX = 2*force
            scaleY = 2*force
        case "zoomOut":
            animateFrom = false
            opacity = 0
            scaleX = 2*force
            scaleY = 2*force
        case "fall":
            animateFrom = false
            rotate = 15 * CGFloat(M_PI/180)
            y = 600*force
        case "shake":
            let animation = CAKeyframeAnimation()
            animation.keyPath = "position.x"
            animation.values = [0, 30*force, -30*force, 30*force, 0]
            animation.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
            animation.timingFunction = getTimingFunction(curve)
            animation.duration = CFTimeInterval(duration)
            animation.additive = true
            animation.repeatCount = repeatCount
            animation.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            layer.addAnimation(animation, forKey: "shake")
        case "pop":
            let animation = CAKeyframeAnimation()
            animation.keyPath = "transform.scale"
            animation.values = [0, 0.2*force, -0.2*force, 0.2*force, 0]
            animation.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
            animation.timingFunction = getTimingFunction(curve)
            animation.duration = CFTimeInterval(duration)
            animation.additive = true
            animation.repeatCount = repeatCount
            animation.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            layer.addAnimation(animation, forKey: "pop")
        case "flipX":
            rotate = 0
            scaleX = 1
            scaleY = 1
            var perspective = CATransform3DIdentity
            perspective.m34 = -1.0 / layer.frame.size.width/2
            
            let animation = CABasicAnimation()
            animation.keyPath = "transform"
            animation.fromValue = NSValue(CATransform3D:
                CATransform3DMakeRotation(0, 0, 0, 0))
            animation.toValue = NSValue(CATransform3D:
                CATransform3DConcat(perspective, CATransform3DMakeRotation(CGFloat(M_PI), 0, 1, 0)))
            animation.duration = CFTimeInterval(duration)
            animation.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            animation.timingFunction = getTimingFunction(curve)
            layer.addAnimation(animation, forKey: "3d")
        case "flipY":
            var perspective = CATransform3DIdentity
            perspective.m34 = -1.0 / layer.frame.size.width/2
            
            let animation = CABasicAnimation()
            animation.keyPath = "transform"
            animation.fromValue = NSValue(CATransform3D:
                CATransform3DMakeRotation(0, 0, 0, 0))
            animation.toValue = NSValue(CATransform3D:
                CATransform3DConcat(perspective,CATransform3DMakeRotation(CGFloat(M_PI), 1, 0, 0)))
            animation.duration = CFTimeInterval(duration)
            animation.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            animation.timingFunction = getTimingFunction(curve)
            layer.addAnimation(animation, forKey: "3d")
        case "morph":
            let morphX = CAKeyframeAnimation()
            morphX.keyPath = "transform.scale.x"
            morphX.values = [1, 1.3*force, 0.7, 1.3*force, 1]
            morphX.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
            morphX.timingFunction = getTimingFunction(curve)
            morphX.duration = CFTimeInterval(duration)
            morphX.repeatCount = repeatCount
            morphX.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            layer.addAnimation(morphX, forKey: "morphX")
            
            let morphY = CAKeyframeAnimation()
            morphY.keyPath = "transform.scale.y"
            morphY.values = [1, 0.7, 1.3*force, 0.7, 1]
            morphY.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
            morphY.timingFunction = getTimingFunction(curve)
            morphY.duration = CFTimeInterval(duration)
            morphY.repeatCount = repeatCount
            morphY.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            layer.addAnimation(morphY, forKey: "morphY")
        case "squeeze":
            let morphX = CAKeyframeAnimation()
            morphX.keyPath = "transform.scale.x"
            morphX.values = [1, 1.5*force, 0.5, 1.5*force, 1]
            morphX.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
            morphX.timingFunction = getTimingFunction(curve)
            morphX.duration = CFTimeInterval(duration)
            morphX.repeatCount = repeatCount
            morphX.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            layer.addAnimation(morphX, forKey: "morphX")
            
            let morphY = CAKeyframeAnimation()
            morphY.keyPath = "transform.scale.y"
            morphY.values = [1, 0.5, 1, 0.5, 1]
            morphY.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
            morphY.timingFunction = getTimingFunction(curve)
            morphY.duration = CFTimeInterval(duration)
            morphY.repeatCount = repeatCount
            morphY.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            layer.addAnimation(morphY, forKey: "morphY")
        case "flash":
            let animation = CABasicAnimation()
            animation.keyPath = "opacity"
            animation.fromValue = 1
            animation.toValue = 0
            animation.duration = CFTimeInterval(duration)
            animation.repeatCount = repeatCount * 2.0
            animation.autoreverses = true
            animation.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            layer.addAnimation(animation, forKey: "flash")
        case "wobble":
            let animation = CAKeyframeAnimation()
            animation.keyPath = "transform.rotation"
            animation.values = [0, 0.3*force, -0.3*force, 0.3*force, 0]
            animation.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
            animation.duration = CFTimeInterval(duration)
            animation.additive = true
            animation.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            layer.addAnimation(animation, forKey: "wobble")
            
            let x = CAKeyframeAnimation()
            x.keyPath = "position.x"
            x.values = [0, 30*force, -30*force, 30*force, 0]
            x.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
            x.timingFunction = getTimingFunction(curve)
            x.duration = CFTimeInterval(duration)
            x.additive = true
            x.repeatCount = repeatCount
            x.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            layer.addAnimation(x, forKey: "x")
        case "swing":
            let animation = CAKeyframeAnimation()
            animation.keyPath = "transform.rotation"
            animation.values = [0, 0.3*force, -0.3*force, 0.3*force, 0]
            animation.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
            animation.duration = CFTimeInterval(duration)
            animation.additive = true
            animation.beginTime = CACurrentMediaTime() + CFTimeInterval(delay)
            layer.addAnimation(animation, forKey: "swing")
        default:
            x = 300
        }
 

*/
}

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

