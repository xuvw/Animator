//
//  BaseAnimate.swift
//  Animator
//
//  Created by xiangyu on 15/8/11.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//
// 所有动画都要实现一个 procontrol，然后可以播放，其他 procontrl 可以来调用这个 func

// 提供一个常用的，易扩展和自定义的动画函数集合


// 搜集一系列效果，只要实现那个类。

import UIKit




public class BaseAnimate {
    
    // 所有 Animate.css 效果的基类
    
    // 自定义曲线，放大和alpha不同步的动画
//    class func curveAsyncAnimate(view: UIView,
//        timing: CAMediaTimingFunction,
//        startTransform: CATransform3D,
//        startOpacity: Float = 1.0,
//        duration: NSTimeInterval = 0.4,
//        endTransform: CATransform3D = CATransform3DIdentity,
//        endOpacity: Float = 1.0){
    
    
    
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



