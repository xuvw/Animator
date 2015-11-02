//
//  Effect.swift
//  Animator
//
//  Created by xiangyu on 15/9/6.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//


import UIKit

//MARK: BaseEffect

class Effect {
    
    var autostart: Bool?
    var autohide: Bool?
    var force: CGFloat = 1.0
    var delay: Double?
    var duration: Double = 1.0
    var repeatCount: Double?
    
    func play(view: UIView){
        
    }

    func play(view: UIView, duration: Double){
        self.duration = duration
        self.play(view)
    }
    
    func play(views: Array<UIView>, duration: Double){
        for view in views{
            play(view, duration: duration)
        }
    }
    
    
    func play(views: Array<UIView>){
        self.play(views, duration: 0.3)
    }
    
}


//MARK: FadeIn


class FadeInEffect: Effect{
    override func play(view: UIView){
        view.layer.opacity = 0.0;
        UIView.animateWithDuration(self.duration, animations: { () -> Void in
            view.layer.opacity = 1;
            view.layer.transform = CATransform3DIdentity
        });
    }
}


class FadeInDownEffect: FadeInEffect{
    override func play(view: UIView){
        view.layer.transform = CATransform3DMakeTranslation(0.0, CGFloat(view.frame.height * 1), 0.0)
        super.play(view, duration: self.duration);
    }
}

class FadeInLeftEffect: FadeInEffect{
    override func play(view: UIView){
        view.layer.transform = CATransform3DMakeTranslation((view.frame.width * self.force), 0.0, 0.0)
        super.play(view, duration: self.duration);
    }
}


class FadeInRightEffect: FadeInEffect{
    override func play(view: UIView){
        view.layer.transform = CATransform3DMakeTranslation(-(view.frame.width * self.force), 0.0, 0.0)
        super.play(view, duration: self.duration);
    }
}

class FadeInUpEffect: FadeInEffect{
    override func play(view: UIView){
        view.layer.transform = CATransform3DMakeTranslation(0.0, -(view.frame.height * self.force), 0.0)
        super.play(view, duration: self.duration);
    }
}


//MARK: FadeOut


class FadeOutEffect: Effect{
    var transfrom = CATransform3DIdentity
    override func play(view: UIView){
        view.layer.opacity = 1.0;
        UIView.animateWithDuration(self.duration, animations: { () -> Void in
            view.layer.opacity = 0.0;
            view.layer.transform = self.transfrom
        });
    }
}

class FadeOutDownEffect: FadeOutEffect{
    override func play(view: UIView){
        view.layer.transform = CATransform3DMakeTranslation(0.0, -(view.frame.height * self.force), 0.0)
        super.play(view, duration: self.duration);
    }
}

class FadeOutLeftEffect: FadeOutEffect{
    override func play(view: UIView){
        view.layer.transform = CATransform3DMakeTranslation(-(view.frame.width * self.force), 0.0, 0.0)
        super.play(view, duration: self.duration);
    }
}

class FadeOutRightEffect: FadeOutEffect{
    override func play(view: UIView){
        view.layer.transform = CATransform3DMakeTranslation((view.frame.width * self.force), 0.0, 0.0)
        super.play(view, duration: self.duration);
    }
}

class FadeOutUpEffect: FadeOutEffect{
    override func play(view: UIView){
        view.layer.transform = CATransform3DMakeTranslation(0.0, (view.frame.height * self.force), 0.0)
        super.play(view, duration: self.duration);
    }
}


//MARK: ZoomIn
