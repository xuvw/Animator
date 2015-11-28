//
//  ZoomOut.swift
//  Animator
//
//  Created by xiangyu on 15/8/9.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

public class ZoomIn: BaseAnimate{
    public override init() {
    }
    override func play(view: UIView, type: String, duration: Double) {
        view.alpha = 0
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.transform = CGAffineTransformMakeScale(0.3, 0.3)
            view.alpha = 1
        });
    }
}

public class ZoomInDown: BaseAnimate{

    override func play(view: UIView, type: String, duration: Double) {
        
        let d1 = duration * 0.6
        let d2 = duration * 0.4
        view.alpha = 0
        view.layer.transform =  CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), 0, -1000, 0)

        
        Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.550, 0.055, 0.675, 0.190),
            duration: d1,
            endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), 0, 60, 0),
            endOpacity: 1.0,
            finish: {_ in
                
                
                
                Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.320, 1),
                    duration: d2,
                    endTransform: CATransform3DIdentity,
                    endOpacity: 1.0,
                    finish: {_ in
                        
                        
                })
        })
        
        
        
    }
}



public class ZoomInUp: BaseAnimate{
    
    override func play(view: UIView, type: String, duration: Double) {
        
        let d1 = duration * 0.6
        let d2 = duration * 0.4
        view.alpha = 0
        view.layer.transform =  CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), 0, 1000, 0)
        
        
        Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.550, 0.055, 0.675, 0.190),
            duration: d1,
            endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), 0, -60, 0),
            endOpacity: 1.0,
            finish: {_ in
                
                
                
                Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.320, 1),
                    duration: d2,
                    endTransform: CATransform3DIdentity,
                    endOpacity: 1.0,
                    finish: {_ in
                        
                        
                })
        })
        
        
        
    }
}



public class ZoomInLeft: BaseAnimate{
    
    override func play(view: UIView, type: String, duration: Double) {
        
        let d1 = duration * 0.6
        let d2 = duration * 0.4
        view.alpha = 0
        view.layer.transform =  CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), -1000, 0,  0)
        
        
        Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.550, 0.055, 0.675, 0.190),
            duration: d1,
            endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), 10, 0, 0),
            endOpacity: 1.0,
            finish: {_ in
                
                
                
                Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.320, 1),
                    duration: d2,
                    endTransform: CATransform3DIdentity,
                    endOpacity: 1.0,
                    finish: {_ in
                        
                        
                })
        })
        
        
        
    }
}


public class ZoomInRight: BaseAnimate{
    
    override func play(view: UIView, type: String, duration: Double) {
        
        let d1 = duration * 0.6
        let d2 = duration * 0.4
        view.alpha = 0
        view.layer.transform =  CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), 1000, 0,  0)
        
        
        Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.550, 0.055, 0.675, 0.190),
            duration: d1,
            endTransform: CATransform3DTranslate(CATransform3DMakeScale(0.475, 0.475, 0.475), -10, 0, 0),
            endOpacity: 1.0,
            finish: {_ in
                
                
                
                Animator.curveAnimate(view, timing: CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.320, 1),
                    duration: d2,
                    endTransform: CATransform3DIdentity,
                    endOpacity: 1.0,
                    finish: {_ in
                        
                        
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
