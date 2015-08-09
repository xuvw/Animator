//
//  SlideIn.swift
//  AnimatedView
//
//  Created by xiangyu on 15/7/30.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit
//MARK: Slide


class SlideInDown: BaseAnimate{
    var transfrom:CATransform3D = CATransform3DIdentity
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0, -view.frame.height, 0);
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.layer.transform = self.transfrom
        });
    }
}



class SlideInLeft: BaseAnimate{
    var transfrom:CATransform3D = CATransform3DIdentity
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(view.frame.width, 0, 0);
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.layer.transform = self.transfrom
        });
    }
}


class SlideInRight: BaseAnimate{
    var transfrom:CATransform3D = CATransform3DIdentity
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(-view.frame.width, 0, 0);
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.layer.transform = self.transfrom
        });
    }
}


class SlideInUp: BaseAnimate{
    var transfrom:CATransform3D = CATransform3DIdentity
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0, view.frame.height, 0);
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.layer.transform = self.transfrom
        });
    }
}
