//
//  FadeOut.swift
//  AnimatedView
//
//  Created by xiangyu on 15/7/30.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit
//MARK: FadeOut


public class FadeOutAnimate: BaseAnimate{
    var force: CGFloat = 1.0
    var forceBig: CGFloat = 10.0
    var transfrom:CATransform3D = CATransform3DIdentity
    
    override public  func play(view: UIView, type: String, duration: Double) {
        view.layer.opacity = 1.0;
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.layer.opacity = 0.0;
            view.layer.transform = self.transfrom
        });
    }
}


public class FadeOutDownAnimate: FadeOutAnimate{
    override  public func play(view: UIView, type: String, duration: Double) {
        self.transfrom = CATransform3DMakeTranslation(0.0, (view.frame.height * force), 0.0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeOutDownBigAnimate: FadeOutAnimate{
    override  public  func play(view: UIView, type: String, duration: Double) {
        self.transfrom = CATransform3DMakeTranslation(0.0, (view.frame.height * forceBig), 0.0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeOutLeftAnimate: FadeOutAnimate{
    override  public func play(view: UIView, type: String, duration: Double) {
        self.transfrom = CATransform3DMakeTranslation(-1.0 * (view.frame.width * force), 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeOutLeftBigAnimate: FadeOutAnimate{
    override  public func play(view: UIView, type: String, duration: Double) {
        self.transfrom = CATransform3DMakeTranslation((-1.0 * view.frame.width * forceBig), 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeOutRightAnimate: FadeOutAnimate{
    override  public func play(view: UIView, type: String, duration: Double) {
        self.transfrom = CATransform3DMakeTranslation(view.frame.width * force, 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeOutRightBigAnimate: FadeOutAnimate{
    override  public func play(view: UIView, type: String, duration: Double) {
        self.transfrom = CATransform3DMakeTranslation(view.frame.width * forceBig, 0.0, 0)
        super.play(view, type: type, duration: duration);
    }
}



public class FadeOutUpAnimate: FadeOutAnimate{
    override  public func play(view: UIView, type: String, duration: Double) {
        self.transfrom = CATransform3DMakeTranslation(0.0, -1 * (view.frame.height * force), 0)
        super.play(view, type: type, duration: duration);
    }
}


public class FadeOutUpBigAnimate: FadeOutAnimate{
    override  public func play(view: UIView, type: String, duration: Double) {
        self.transfrom = CATransform3DMakeTranslation(0.0, -1 * (view.frame.height * forceBig), 0)
        super.play(view, type: type, duration: duration);
    }
}
