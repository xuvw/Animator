//
//  Effect.swift
//  Animator
//
//  Created by xiangyu on 15/9/6.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//


import UIKit

//加入 force

class Effect {
    func play(view: UIView, duration: Double){
        
    }
    
    func play(views: Array<UIView>, type: String, duration: Double){
        for view in views{
            play(view, duration: duration)
        }
    }
    
    func play(view: UIView){
        self.play(view, duration: 0.3)
    }
    
    
    func play(views: Array<UIView>){
        self.play(views, duration: 0.3)
    }
    
    func play(views: Array<UIView>, duration: Double){
        self.play(views, type: "", duration: duration)
    }
    
}
