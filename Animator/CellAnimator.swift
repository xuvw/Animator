//
//  CellAnimator.swift
//  AnimatedTableView
//
//  Created by xiangyu on 15/7/30.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit


//TODO

public class CellAnimator {
    static var dict : Dictionary<String, Selector> = ["scala":Selector("scalaAnimate:")]
    

    
    static let TipInCellAnimatorStartTransform:CATransform3D = {
        let rotationDegrees: CGFloat = -15.0
        let rotationRadians: CGFloat = rotationDegrees * (CGFloat(M_PI)/180.0)
        let offset = CGPointMake(-20, -20)
        var startTransform = CATransform3DIdentity
        startTransform = CATransform3DRotate(CATransform3DIdentity,
            rotationRadians, 0.0, 0.0, 1.0)
        startTransform = CATransform3DTranslate(startTransform, offset.x, offset.y, 0.0)
        
        return startTransform
        }()
    

    // Example from http://www.raywenderlich.com/49311/advanced-table-view-animations-tutorial-drop-in-cards
    public class func RayAnimate(cell:UITableViewCell) {
        let view = cell.contentView
        Animator.transFrom(view, transform: TipInCellAnimatorStartTransform)
    }
    
    // scala/grow animation
    public class func scalaAnimate(cell:UITableViewCell) {
        let transform = CATransform3DMakeScale(0.01, 0.01, 0.01)
        Animator.transFrom(cell, transform: transform)
    }
    
    // card
    public  class func cardsAnimate(cell: UITableViewCell){
        print ("lalalala", terminator: "")
        print (dict["scala"], terminator: "")

        var transform = CATransform3DMakeScale(0.5, 0.5, 0.5);
        transform.m34 = -1.0 / 500.0
        transform = CATransform3DRotate(transform, CGFloat(M_PI_4), (1.0), (0.0), (0.0));
        cell.layer.anchorPoint = CGPointMake(1.0, 0.5)
        Animator.curveAnimate(cell, timing: getTimingFunction("ease"), startTransform: transform, startOpacity: 0.8, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    
    // FIXME: Some Problem Here
    
    public class func curlAnimate(cell: UITableViewCell){
        var transform = CATransform3DIdentity
        transform.m34 = -1.0 / 600.0
        transform = CATransform3DTranslate(transform, -cell.layer.bounds.size.width/2.0, 0.0, 0.0)
        transform = CATransform3DRotate(transform, CGFloat(M_PI_2), (0.0), (1.0), (0.0));
        transform = CATransform3DTranslate(transform, cell.layer.bounds.size.width/2.0, 0.0, 0.0)
        cell.layer.anchorPoint = CGPointMake(0.0, 0.0)
        Animator.curveAsyncAnimate(cell, timing: getTimingFunction("ease"), startTransform: transform, startOpacity: 1.0, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1.0)
        
    }
    

    
    public class func waveAnimate(cell: UITableViewCell){
        let transform = CATransform3DMakeTranslation(-cell.frame.width * 0.7, 0, 0);
        let timing = CAMediaTimingFunction(controlPoints: 0.26, 0.860, 0.440 , 0.985);
        Animator.curveAnimate(cell, timing: timing, startTransform: transform, startOpacity: 0.8, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    
    public class func flipAnimate(cell: UITableViewCell){
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, CGFloat(-M_PI / 2.3), (-1.0), (0.0), (0.0));
        transform.m34 = -1 / 400.0
        let timing = getTimingFunction("ease")
        
        Animator.curveAsyncAnimate(cell, timing: timing, startTransform: transform, startOpacity: 0.0, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    
   public class func flyAnimate(cell: UITableViewCell){
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, CGFloat(-M_PI), (-1.0), (0.0), (0.0));
        transform.m34 = -1 / 400.0
        let timing = getTimingFunction("ease")
        
        
        Animator.curveAsyncAnimate(cell, timing: timing, startTransform: transform, startOpacity: 0.0, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    
    public class func simplifiedflyAnimate(cell: UITableViewCell){
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, CGFloat(M_PI / 2.0), (-0.5), (-0.5), (0.0));
        transform = CATransform3DMakeTranslation(0, 100.0, 100.0)
        transform.m34 = -1 / 300.0
        let timing = getTimingFunction("ease")
     //   cell.layer.anchorPoint = CGPointMake(1.0, 0.5)
        
        
        Animator.curveAnimate(cell, timing: timing, startTransform: transform, startOpacity: 1.0, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    public class func reverseFlyAnimate(cell: UITableViewCell){
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, CGFloat(-M_PI), (    1.0), (0.0), (0.0));
        transform.m34 = -1 / 400.0
        let timing = getTimingFunction("ease")
        
        
        Animator.curveAsyncAnimate(cell, timing: timing, startTransform: transform, startOpacity: 0.0, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    // not from stroll.js
    
   public class func helixAnimate(cell: UITableViewCell){
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, CGFloat(M_PI), (0.0), (0.0), (1.0));
        transform.m34 = -1 / 600.0
        let timing = getTimingFunction("ease")

        Animator.curveAsyncAnimate(cell, timing: timing, startTransform: transform, startOpacity: 0.0, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    
    
    public class func originHelixAnimate(cell: UITableViewCell){
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, CGFloat(M_PI), (0.0), (1.0), (0.0));
        transform.m34 = -1 / 600.0
        let timing = getTimingFunction("ease")
        
        Animator.curveAsyncAnimate(cell, timing: timing, startTransform: transform, startOpacity: 0.0, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    
    public class func fanAnimate(cell: UITableViewCell){
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, CGFloat(M_PI / 3.0), (0.0), (0.0), (1.0));
        let timing = CAMediaTimingFunction(controlPoints: 0.390, 0.575, 0.565, 1.000)
        cell.layer.anchorPoint = CGPointMake(0.0, 0.0);
        Animator.curveAsyncAnimate(cell, timing: timing, startTransform: transform, startOpacity: 1.0, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    
    
  
    // papercut
    public class func papercutAnimate(cell: UITableViewCell){
        
        var t = CGAffineTransformIdentity;
        t.b = CGFloat(M_PI_4);
        var transform = CATransform3DMakeAffineTransform(t);
        transform.m34 = -(1.0 / 500.0);

        Animator.transFrom(cell, transform:  transform);
    }
    
   public class func fadeAnimate(cell: UITableViewCell){
        Animator.curveAsyncAnimate(cell, timing: getTimingFunction("easeInOut"), startTransform: CATransform3DIdentity, startOpacity: 0.0, duration: 0.6, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    
    public class func twirlAnimate(cell: UITableViewCell){
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, CGFloat(M_PI / 180.0 * 80.0), (1.0), (1.0 / 8.0 * 7), (1.0 / 8.0 ));
        let timing = getTimingFunction("ease")
        transform.m34 = -1/400.0
        Animator.curveAsyncAnimate(cell, timing: timing, startTransform: transform, startOpacity: 0.0, duration: 0.4, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    // animation like Zhihu app
    public class func zhihuAnimate(cell: UITableViewCell){
        var transform = CATransform3DIdentity
        transform = CATransform3DMakeTranslation(0, -cell.frame.height * 0.3, 0)
        let timing = getTimingFunction("easeIn")
        Animator.curveAsyncAnimate(cell, timing: timing, startTransform: transform, startOpacity: 0.6, duration: 0.4, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }
    
    
   public class func MMAnimate(cell: UITableViewCell){
            let translation = CATransform3DMakeTranslation(0, 480, 0);
        
        cell.layer.transform = translation;
        cell.layer.anchorPoint = CGPointMake(0, 0.5);
        
        if(cell.layer.position.x != 0){
            cell.layer.position = CGPointMake(0, cell.layer.position.y);
        }
        UIView.beginAnimations("translation", context: nil)
        UIView.setAnimationDuration(0.8)
        
        cell.layer.transform = CATransform3DIdentity;
        
        cell.alpha = 1;
        cell.layer.shadowOffset = CGSizeMake(0, 0);
        UIView.commitAnimations()
        
    }

    class func getTimingFunction(curve: String) -> CAMediaTimingFunction {
        return Animator.getTimingFunction(curve)
    }
    
    
}