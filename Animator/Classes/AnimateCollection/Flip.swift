//
//  Flip.swift
//  Animator
//
//  Created by xiangyu on 15/8/9.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

public class Flip: BaseAnimate{
   
    override func play(view: UIView, type: String, duration: Double) {
        
        var transform = CATransform3DIdentity
    
        transform = CATransform3DRotate(transform, CGFloat(M_PI), 0.0 ,1.0 , 0.0 )
        transform.m34 = -1 / 400.0
        Animator.curveAnimate(view, timing: getTimingFunction("easeInOutBack"), duration: duration, endTransform: transform, endOpacity: 1.0) { (finish) -> Void in
            
            
            transform = CATransform3DRotate(transform, CGFloat(M_PI), 0.0 ,1.0 , 0.0 )
            transform.m34 = -1 / 400.0
            Animator.curveAnimate(view, timing: Animator.getTimingFunction("easeInOutBack"), duration: duration, endTransform: transform, endOpacity: 1.0) { (finish) -> Void in
                
            }
        }
    }
}


public class FlipX: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
    
        var transform = CATransform3DIdentity
        
        transform = CATransform3DRotate(transform, CGFloat(M_PI_2), -1.0 ,0.0 , 0.0 )
        transform.m34 = -1 / 400.0
        
        view.layer.transform = transform
        view.setAnchorPoint(CGPointMake(0.5, 0.0))
        Animator.curveAnimate(view, timing: getTimingFunction("easeInOutBack"), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
       
          
        }
    }
}





public class FlipY: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        
        var transform = CATransform3DIdentity
        
        transform = CATransform3DRotate(transform, CGFloat(M_PI_2), 0.0 ,1.0 , 0.0 )
        transform.m34 = -1 / 400.0
        
        view.layer.transform = transform
        Animator.curveAnimate(view, timing: getTimingFunction("easeInOutBack"), duration: duration, endTransform: CATransform3DIdentity, endOpacity: 1.0) { (finish) -> Void in
            
            
        }
    }
}




public class FlipOutX: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        
        let d1 = duration * 0.3
        let d2 = duration * 0.7
        
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, CGFloat(M_PI / 9.0), -1.0 ,0.0 , 0.0 )
        transform.m34 = -1 / 400.0
        
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: d1, endTransform: transform, endOpacity: 1.0) { (finish) -> Void in
            
            
            var transform = CATransform3DIdentity
            transform = CATransform3DRotate(transform, CGFloat(M_PI_2), 1.0 ,0.0 , 0.0 )
            transform.m34 = -1 / 400.0
            
            Animator.curveAnimate(view, timing: Animator.getTimingFunction(""), duration: d2, endTransform: transform, endOpacity: 0.0) { (finish) -> Void in
                
                
            }
            
        }
    }
}







public class FlipOutY: BaseAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        
        let d1 = duration * 0.3
        let d2 = duration * 0.7
        
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, CGFloat(M_PI / 9.0), 0.0 , -1.0 , 0.0 )
        transform.m34 = -1 / 400.0
        
        Animator.curveAnimate(view, timing: getTimingFunction(""), duration: d1, endTransform: transform, endOpacity: 1.0) { (finish) -> Void in
            
            
            var transform = CATransform3DIdentity
            transform = CATransform3DRotate(transform, CGFloat(M_PI_2), 0.0 , -1.0 , 0.0 )
            transform.m34 = -1 / 400.0
            
            Animator.curveAnimate(view, timing: Animator.getTimingFunction(""), duration: d2, endTransform: transform, endOpacity: 0.0) { (finish) -> Void in
                
                
            }
            
        }
    }
}