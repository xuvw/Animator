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



