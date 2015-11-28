//
//  SlideOut.swift
//  AnimatedView
//
//  Created by xiangyu on 15/7/30.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

//MARK: SideOut

public class SlideOutDown: BaseAnimate{
    var transfrom:CATransform3D = CATransform3DIdentity
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0, view.frame.height, 0);
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.layer.transform = self.transfrom
        });
    }
}



public class SlideOutLeft: BaseAnimate{
    var transfrom:CATransform3D = CATransform3DIdentity
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(-view.frame.width, 0, 0);
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.layer.transform = self.transfrom
        });
    }
}


public class SlideOutRight: BaseAnimate{
    var transfrom:CATransform3D = CATransform3DIdentity
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(view.frame.width, 0, 0);
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.layer.transform = self.transfrom
        });
    }
}


public class SlideOutUp: BaseAnimate{
    var transfrom:CATransform3D = CATransform3DIdentity
    override public func play(view: UIView, type: String, duration: Double) {
        view.layer.transform = CATransform3DMakeTranslation(0, -view.frame.height, 0);
        UIView.animateWithDuration(duration, animations: { () -> Void in
            view.layer.transform = self.transfrom
        });
    }
}
