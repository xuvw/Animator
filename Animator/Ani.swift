//
//  Ani.swift
//  Animator
//
//  Created by xiangyu on 15/8/11.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit



// 动画属性 Model

class Ani: NSObject {
    var duration: Double = 0.6
    var startOpacity: Float = 0.8
    var endOpacity: Float = 1.0
    var startTransform: CATransform3D?
    var endTransform: CATransform3D?
    var timing:CAMediaTimingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
    
}


class Keyframe: NSObject {
    var opa: Float?;
    var transform: CATransform3D?;
    var timing: CAMediaTimingFunction?;
    var precent: Float?;
    
    class func animate(view: UIView, params: Array<Keyframe>, duration: CGFloat, type: String){
        
        let keyframeAnimation = CAKeyframeAnimation()
        keyframeAnimation.keyPath = type
        keyframeAnimation.values = []
        keyframeAnimation.keyTimes = []
        keyframeAnimation.timingFunctions = []
        keyframeAnimation.duration = CFTimeInterval(duration)
        keyframeAnimation.repeatCount = 1
        keyframeAnimation.beginTime = CACurrentMediaTime() + CFTimeInterval(0)
        view.layer.addAnimation(keyframeAnimation, forKey: nil)
        
    }
}


class Motion {
    var duration : Double?
    var transform : CATransform3D?
    var alpha: Double?
    var ease: CAMediaTimingFunction?
}
