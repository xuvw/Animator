//
//  FadeIn.swift
//  AnimatedView
//
//  Created by xiangyu on 15/7/30.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit
//MARK: FadeIn

public class FadeInAnimate: BaseAnimate{
    var force: CGFloat = 1.0
    var forceBig: CGFloat = 10.0
    override  public func play(view: UIView, type: String, duration: Double) {
        view.layer.opacity = 0.0;
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.layer.opacity = 1;
            view.layer.transform = CATransform3DIdentity
        });
    }
}


public class FadeInDownAnimate: FadeInAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0.0, -(view.frame.height * force), 0.0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeInDownBigAnimate: FadeInAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0.0, -(view.frame.height * forceBig), 0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeInLeftAnimate: FadeInAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(view.frame.width * force, 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeInLeftBigAnimate: FadeInAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(view.frame.width * forceBig, 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeInRightAnimate: FadeInAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(-view.frame.width * force, 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeInRightBigAnimate: FadeInAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(-view.frame.width * forceBig, 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}



public class FadeInUpAnimate: FadeInAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0.0, view.frame.height * force, 0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeInUpBigAnimate: FadeInAnimate{
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0.0, view.frame.height * forceBig, 0)
        super.play(view, type: type, duration: duration);
    }
}
