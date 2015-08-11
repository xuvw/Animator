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





//.effeckt-modal-wrap {
//    position: fixed;
//    top: 50%;
//    left: 50%;
//    max-width: 320px;
//    min-width: 320px;
//    -webkit-transform: translate(-50%, -50%);
//    -ms-transform: translate(-50%, -50%);
//    transform: translate(-50%, -50%);
//    z-index: 2000;
//    visibility: hidden;
//    -webkit-backface-visibility: hidden;
//    -ms-backface-visibility: hidden;
//    -o-backface-visibility: hidden;
//    backface-visibility: hidden;
//}
//
//.effeckt-modal-overlay {
//    position: fixed;
//    top: 0;
//    left: 0;
//    width: 100%;
//    height: 100%;
//    visibility: hidden;
//    opacity: 0;
//    transition-duration: 300ms;
//}
//
//.effeckt-show.effeckt-modal-wrap {
//    visibility: visible;
//}
//
//.effeckt-show.effeckt-modal-wrap ~ .effeckt-modal-overlay {
//    visibility: visible;
//    opacity: 1;
//}
//
//.effeckt-modal {
//    transition-property: all;
//    transition-duration: 300ms;
//    -webkit-animation-duration: 900ms;
//    animation-duration: 900ms;
//    -webkit-animation-fill-mode: forwards;
//    animation-fill-mode: forwards;
//}
//
//.from-below .effeckt-content {
//    -webkit-transform: scale(0.7);
//    -ms-transform: scale(0.7);
//    transform: scale(0.7);
//    opacity: 0;
//}
//
//.effeckt-show.from-below .effeckt-content {
//    -webkit-transform: scale(1);
//    -ms-transform: scale(1);
//    transform: scale(1);
//    opacity: 1;
//}
//
//.from-above .effeckt-content {
//    -webkit-transform: scale(1.3);
//    -ms-transform: scale(1.3);
//    transform: scale(1.3);
//    opacity: 0;
//}
//
//.effeckt-show.from-above .effeckt-content {
//    -webkit-transform: scale(1);
//    -ms-transform: scale(1);
//    transform: scale(1);
//    opacity: 1;
//}
//
//.to-below .effeckt-content {
//    -webkit-transform: scale(0.7);
//    -ms-transform: scale(0.7);
//    transform: scale(0.7);
//    opacity: 0;
//}
//
//.to-above .effeckt-content {
//    -webkit-transform: scale(1.3);
//    -ms-transform: scale(1.3);
//    transform: scale(1.3);
//    opacity: 0;
//}
//
//.slide-in-top .effeckt-content {
//    -webkit-transform: translate3d(0, -100%, 0);
//    -ms-transform: translate3d(0, -100%, 0);
//    transform: translate3d(0, -100%, 0);
//    opacity: 0;
//}
//
//.effeckt-show.slide-in-top .effeckt-content {
//    -webkit-transform: translate3d(0, 0, 0);
//    -ms-transform: translate3d(0, 0, 0);
//    transform: translate3d(0, 0, 0);
//    opacity: 1;
//}
//
//.slide-in-right .effeckt-content {
//    -webkit-transform: translate3d(30%, 0, 0);
//    -ms-transform: translate3d(30%, 0, 0);
//    transform: translate3d(30%, 0, 0);
//    opacity: 0;
//}
//
//.effeckt-show.slide-in-right .effeckt-content {
//    -webkit-transform: translate3d(0, 0, 0);
//    -ms-transform: translate3d(0, 0, 0);
//    transform: translate3d(0, 0, 0);
//    opacity: 1;
//}
//
//.slide-in-bottom .effeckt-content {
//    -webkit-transform: translate3d(0, 30%, 0);
//    -ms-transform: translate3d(0, 30%, 0);
//    transform: translate3d(0, 30%, 0);
//    opacity: 0;
//}
//
//.effeckt-show.slide-in-bottom .effeckt-content {
//    -webkit-transform: translate3d(0, 0, 0);
//    -ms-transform: translate3d(0, 0, 0);
//    transform: translate3d(0, 0, 0);
//    opacity: 1;
//}
//
//.slide-in-left .effeckt-content {
//    -webkit-transform: translate3d(-30%, 0, 0);
//    -ms-transform: translate3d(-30%, 0, 0);
//    transform: translate3d(-30%, 0, 0);
//    opacity: 0;
//}
//
//.effeckt-show.slide-in-left .effeckt-content {
//    -webkit-transform: translate3d(0, 0, 0);
//    -ms-transform: translate3d(0, 0, 0);
//    transform: translate3d(0, 0, 0);
//    opacity: 1;
//}

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
