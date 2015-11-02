//
//  Attention.swift
//  Animator
//
//  Created by xiangyu on 15/8/9.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

public class Attention: BaseAnimate {
    
   
    override func play(view: UIView, type: String, duration: Double) {
        let force = 0.5
        let curve = ""
        let delay = 0.0
        let repeatCount = Float(1.0)
        let layer = view.layer
        
        switch(type){
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
            return
        }
    
    }

   
}


