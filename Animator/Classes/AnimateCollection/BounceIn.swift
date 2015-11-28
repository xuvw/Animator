//
//  BounceIn.swift
//  Animator
//
//  Created by xiangyu on 15/8/9.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit


public class BounceIn: BaseAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        
        view.layer.transform = CATransform3DMakeScale(0.3, 0.3, 0.3)
        view.alpha = 0.0

        
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 5.0, options: [], animations: { () -> Void in
            
            }) { (finish) -> Void in
                
        }

    }
}

public class BounceInDown: BaseAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        
        view.layer.transform = CATransform3DTranslate(CATransform3DMakeScale(1.0, 1.0, 1.0), 0, -1000 , 0)
        view.alpha = 0.0
        
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 6.0, options: [], animations: {
            view.layer.transform = CATransform3DIdentity
            view.alpha = 1.0
            
            }, completion: { finished in
        })
    }
}



public class BounceInLeft: BaseAnimate{
    override  public  func play(view: UIView, type: String, duration: Double) {
        
        view.layer.transform = CATransform3DTranslate(CATransform3DMakeScale(1.0, 1.0, 1.0), 1000, 0 , 0)
        view.alpha = 0.0
        
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 12.0, options: [], animations: {
            view.layer.transform = CATransform3DIdentity
            view.alpha = 1.0
            
            }, completion: { finished in
        })
    }
}

public class BounceInRight: BaseAnimate{
    override public  func play(view: UIView, type: String, duration: Double) {
        
        view.layer.transform = CATransform3DTranslate(CATransform3DMakeScale(1.0, 1.0, 1.0), -1000, 0.00 , 0)
        view.alpha = 0.0
        
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 6.0, options: [], animations: {
            view.layer.transform = CATransform3DIdentity
            view.alpha = 1.0
            
            }, completion: { finished in
        })
    }
}


public class BounceInUp: BaseAnimate{
    override public  func play(view: UIView, type: String, duration: Double) {
        
        view.layer.transform = CATransform3DTranslate(CATransform3DMakeScale(1.0, 1.0, 1.0), 0, 1000 , 0)
        view.alpha = 0.0
        
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 6.0, options: [], animations: {
            view.layer.transform = CATransform3DIdentity
            view.alpha = 1.0
            
            }, completion: { finished in
        })
    }
}





public class BounceOut: BaseAnimate{
    override  public func play(view: UIView, type: String, duration: Double) {
        
        view.alpha = 1.0
        
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 5.0, options: [], animations: {
            view.layer.transform = CATransform3DMakeScale(0.3, 0.3, 0.3)
            view.alpha = 0
            
            }, completion: { finished in
        })
    }
}

public class BounceOutDown: BaseAnimate{
    override  public func play(view: UIView, type: String, duration: Double) {
        let d1 = duration * 0.4
        
        UIView.animateWithDuration(d1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 6.0, options: [], animations: {
            view.layer.transform = CATransform3DMakeTranslation(0, -20, 0)
            
            }, completion: { finished in
                Animator.curveAnimate(view, timing: Animator.getTimingFunction("easeOut"), duration: duration, endTransform: CATransform3DTranslate(CATransform3DMakeScale(1.0, 1.0, 1.0), 0, 1000 , 0), endOpacity: 0) { (finish) -> Void in
                    
                }
        })
        
   
    }
}


public class BounceOutLeft: BaseAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        
        
        let d1 = duration * 0.4
        
        UIView.animateWithDuration(d1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 6.0, options: [], animations: {
            view.layer.transform = CATransform3DMakeTranslation(10, 0, 0)
            
            }, completion: { finished in
                Animator.curveAnimate(view, timing: Animator.getTimingFunction("easeOut"), duration: duration, endTransform: CATransform3DTranslate(CATransform3DMakeScale(1.0, 1.0, 1.0), 1000, 0 , 0), endOpacity: 0) { (finish) -> Void in
                    
                }
        })
        
        
       
    }
}

public class BounceOutRight: BaseAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        
      
        let d1 = duration * 0.4
        
        UIView.animateWithDuration(d1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 6.0, options: [], animations: {
            view.layer.transform = CATransform3DMakeTranslation(-10, 0, 0)
            
            }, completion: { finished in
                Animator.curveAnimate(view, timing: Animator.getTimingFunction("easeOut"), duration: duration, endTransform: CATransform3DTranslate(CATransform3DMakeScale(1.0, 1.0, 1.0), 1000, 0 , 0), endOpacity: 0) { (finish) -> Void in
                    
                }
        })
        
    }
}


public class BounceOutUp: BaseAnimate{
    override public  func play(view: UIView, type: String, duration: Double) {
        
        let d1 = duration * 0.4
        
        UIView.animateWithDuration(d1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 6.0, options: [], animations: {
            view.layer.transform = CATransform3DMakeTranslation(0, 20, 0)
            
            }, completion: { finished in
                Animator.curveAnimate(view, timing: Animator.getTimingFunction("easeOut"), duration: duration, endTransform: CATransform3DTranslate(CATransform3DMakeScale(1.0, 1.0, 1.0), 0, -1000 , 0), endOpacity: 0) { (finish) -> Void in
                    
                }
        })
        
    }
}