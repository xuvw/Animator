//
//  BaseAnimate.swift
//  Animator
//
//  Created by xiangyu on 15/8/11.
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



