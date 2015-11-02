//
//  ZoomOut.swift
//  Animator
//
//  Created by xiangyu on 15/8/9.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

class ZoomOut: BaseAnimate{
    var transfrom:CATransform3D = CATransform3DIdentity
    override func play(view: UIView, type: String, duration: Double) {
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.transform = CGAffineTransformMakeScale(0.3, 0.3)
            view.alpha = 0
        });
    }
}

class ZoomOutDown: BaseAnimate{
    var transfrom:CATransform3D = CATransform3DIdentity
    override func play(view: UIView, type: String, duration: Double) {

        let d1 = duration * 0.4
        let d2 = duration * 0.6
        
        
        Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.550, 0.055, 0.675, 0.190),
        duration: d1,
        endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), 0, -60, 0),
        endOpacity: 1.0,
        finish: {_ in
            
          //  let p = view.layer.anchorPoint
            
            view.layer.anchorPoint = CGPointMake(0.5, 1.0)
            Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.320, 1),
                duration: d2,
                endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.1, 0.1, 0.1), 0, 1000, 0),
                endOpacity: 0.0,
                finish: {_ in
                    
 
            })
        })
        

        
    }
}



class ZoomOutUp: BaseAnimate{
    var transfrom:CATransform3D = CATransform3DIdentity
    override func play(view: UIView, type: String, duration: Double) {
        
        let d1 = duration * 0.4
        let d2 = duration * 0.6
        
        
        Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.550, 0.055, 0.675, 0.190),
            duration: d1,
            endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), 0, 60, 0),
            endOpacity: 1.0,
            finish: {_ in
                
           //     let p = view.layer.anchorPoint
                
                view.layer.anchorPoint = CGPointMake(0.5, 1.0)
                Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.320, 1),
                    duration: d2,
                    endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.1, 0.1, 0.1), 0, -1000, 0),
                    endOpacity: 0.0,
                    finish: {_ in
                        
                        
                })
        })
        
        
        
    }
}



class ZoomOutLeft: BaseAnimate {
    override func play(view: UIView, type: String, duration: Double) {
        
        let d1 = duration * 0.4
        let d2 = duration * 0.6
        
        
        Animator.curveAnimate(view, timing: Animator.getTimingFunction(""),
            duration: d1,
            endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), 20, 0, 0),
            endOpacity: 1.0,
            finish: {_ in
                
                let p = view.layer.anchorPoint
                
                view.layer.anchorPoint = CGPointMake(0.0, 0.5)
                
                Animator.curveAnimate(view, timing: Animator.getTimingFunction(""),
                    duration: d2,
                    endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.1, 0.1, 0.1), -1000, 0, 0),
                    endOpacity: 0.0,
                    finish: {_ in
                        
                        view.layer.anchorPoint = p
                        
                        
                })
        })
        
        
        
    }
}



class ZoomOutRight: BaseAnimate {
    override func play(view: UIView, type: String, duration: Double) {
        
        let d1 = duration * 0.4
        let d2 = duration * 0.6
        
        
        Animator.curveAnimate(view, timing: Animator.getTimingFunction(""),
            duration: d1,
            endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), -20, 0, 0),
            endOpacity: 1.0,
            finish: {_ in
                
                let p = view.layer.anchorPoint
                
                view.layer.anchorPoint = CGPointMake(0.0, 0.5)
                
                Animator.curveAnimate(view, timing: Animator.getTimingFunction(""),
                    duration: d2,
                    endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.1, 0.1, 0.1), 1000, 0, 0),
                    endOpacity: 0.0,
                    finish: {_ in
                        
                        view.layer.anchorPoint = p
                        
                        
                })
        })
        
        
        
    }
}
//
//class SlideInLeft: BaseAnimate{
//    var transfrom:CATransform3D = CATransform3DIdentity
//    override func play(view: UIView, type: String, duration: Double) {
//        view.layer.transform = CATransform3DMakeTranslation(view.frame.width, 0, 0);
//        UIView.animateWithDuration(duration, animations: { () -> Void in
//            view.layer.transform = self.transfrom
//        });
//    }
//}
//
//
//class SlideInRight: BaseAnimate{
//    var transfrom:CATransform3D = CATransform3DIdentity
//    override func play(view: UIView, type: String, duration: Double) {
//        view.layer.transform = CATransform3DMakeTranslation(-view.frame.width, 0, 0);
//        UIView.animateWithDuration(duration, animations: { () -> Void in
//            view.layer.transform = self.transfrom
//        });
//    }
//}
//
//
//class SlideInUp: BaseAnimate{
//    var transfrom:CATransform3D = CATransform3DIdentity
//    override func play(view: UIView, type: String, duration: Double) {
//        view.layer.transform = CATransform3DMakeTranslation(0, view.frame.height, 0);
//        UIView.animateWithDuration(duration, animations: { () -> Void in
//            view.layer.transform = self.transfrom
//        });
//    }
//}
