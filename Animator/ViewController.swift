//
//  ViewController.swift
//  Animator
//
//  Created by xiangyu on 15/8/4.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yourView: UIView!
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Animator.transFrom(myView, transform: CATransform3DMakeScale(3, 3, 3))
      //  Animator.customTimingTrans(myView, time: "easeInCirc", transform: CATransform3DMakeScale(3, 3, 3))
//        UIView.animateWithDuration(2.0, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 1.0, options: UIViewAnimationCurve.Linear, animations: { () -> Void in
//            
//        }) { (finished) -> Void in
//
//        })
//        
//        UIView.animateWithDuration(5, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 5, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
//            self.myView.transform = CGAffineTransformMakeScale(2, 2);
//        }, completion: nil)
//        
//        
//        UIView.animateWithDuration(5, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 5, options: UIViewAnimationOptions.CurveLinear, animations: {
//            self.yourView.transform = CGAffineTransformMakeScale(2, 2);
//            }, completion: nil)
//   
//    

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        //
        var alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            switch action.style{
            case .Default:
                println("default")
                
            case .Cancel:
                println("cancel")
                
            case .Destructive:
                println("destructive")
            }
        }))
        
        
    
//        var transform = CATransform3DIdentity
//        transform = CATransform3DRotate(transform, CGFloat(M_PI / 12.0), (-1), (0.0), (0.0));
//        transform.m34 = -1 / 600.0
//        let timing = Animator.getTimingFunction("ease")
//        self.view.layer.shadowColor = UIColor.redColor().CGColor
//        self.view.layer.shadowOffset = CGSizeMake(10, 10)
//        self.view.layer.shadowRadius = 2;
//        
//        self.view.layer.masksToBounds = true;
//        
//        let radius = CGRectGetWidth(view.bounds)/2.0;
//        self.view.layer.shouldRasterize = true
//
//      
//        myView.layer.shadowColor = UIColor.redColor().CGColor
//        myView.layer.shadowOffset = CGSizeMake(20, 20)
//        myView.layer.shadowRadius = 20;
//        myView.layer.shadowOpacity = 0.5;
//        
//    
//
//        myView.layer.borderWidth = 14.0
//        
//        myView.layer.masksToBounds = true;
//        
//        myView.layer.shouldRasterize = true
        
        RotateOutDownLeft().play(myView, duration: 1.2)


       // Animator.curveAnimate(self.view, timing: timing, startTransform: CATransform3DIdentity, startOpacity: 1.0, duration: 0.6, endTransform: transform, endOpacity: 1.0)



        
//        presentViewController(alert, animated: false, completion: {
//        finish in
//
//            alert.view.transform = CGAffineTransformMakeScale(0.4, 0.4)
//
//   
//                    UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 5, options: UIViewAnimationOptions.CurveLinear, animations: {
//                        
//                        alert.view.alpha = 1
//                        alert.view.transform = CGAffineTransformMakeScale(1.0, 1.0)
//                        
//                        
//
//                        
//                        }, completion: nil)
//        })
    }
    
     func simplifiedflyAnimate(cell: UIView){
        var transform = CATransform3DIdentity
        transform = CATransform3DRotate(transform, CGFloat(M_PI / 2.0), (-0.5), (-0.5), (0.0));
        transform = CATransform3DMakeTranslation(0, 100.0, 100.0)
        transform.m34 = -1 / 300.0
        let timing = Animator.getTimingFunction("ease")
        //   cell.layer.anchorPoint = CGPointMake(1.0, 0.5)
        
        
        Animator.curveAnimate(cell, timing: timing, startTransform: transform, startOpacity: 1.0, duration: 0.3, endTransform: CATransform3DIdentity, endOpacity: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

