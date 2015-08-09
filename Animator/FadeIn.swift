//
//  FadeIn.swift
//  AnimatedView
//
//  Created by xiangyu on 15/7/30.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit
//MARK: FadeIn

class FadeInAnimate: BaseAnimate{
    var force: CGFloat = 1.0
    var forceBig: CGFloat = 10.0
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.opacity = 0.0;
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.layer.opacity = 1;
            view.layer.transform = CATransform3DIdentity
        });
    }
}


class FadeInDownAnimate: FadeInAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0.0, -(view.frame.height * force), 0.0)
        super.play(view, type: type, duration: duration);
    }
}


class FadeInDownBigAnimate: FadeInAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0.0, -(view.frame.height * forceBig), 0)
        super.play(view, type: type, duration: duration);
    }
}


class FadeInLeftAnimate: FadeInAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(view.frame.width * force, 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}


class FadeInLeftBigAnimate: FadeInAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(view.frame.width * forceBig, 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}


class FadeInRightAnimate: FadeInAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(-view.frame.width * force, 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}


class FadeInRightBigAnimate: FadeInAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(-view.frame.width * forceBig, 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}



class FadeInUpAnimate: FadeInAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0.0, view.frame.height * force, 0)
        super.play(view, type: type, duration: duration);
    }
}


class FadeInUpBigAnimate: FadeInAnimate{
    override func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0.0, view.frame.height * forceBig, 0)
        super.play(view, type: type, duration: duration);
    }
}
