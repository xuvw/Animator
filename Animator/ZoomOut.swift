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
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.transform = CGAffineTransformMakeScale(0.475, 0.475)
            view.alpha = 0
        }, completion:{
            finish in
        
        
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
