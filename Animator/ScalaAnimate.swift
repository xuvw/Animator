//
//  ScalaAnimate.swift
//  Animator
//
//  Created by xiangyu on 15/8/11.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit


class ScalaAnimate:  BaseAnimate {
    override func play(view: UIView, type: String, duration: Double) {
        view.transform = CGAffineTransformMakeScale(0.2, 0.2)
        view.layer.opacity = 0.2;
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.transform = CGAffineTransformIdentity;
            view.layer.opacity = 1;
        });
    }
}