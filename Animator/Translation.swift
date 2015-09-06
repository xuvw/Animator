//
//  Translation.swift
//  Animator
//
//  Created by xiangyu on 15/8/7.
//  Copyright (c) 2015年 MMClub. All rights reserved.
//

import UIKit




class TranslationDelegate : NSObject, UIViewControllerTransitioningDelegate {
    // ---- UIViewControllerTransitioningDelegate methods
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return Translation()
    }
    
}

class Translation: NSObject, UIViewControllerAnimatedTransitioning   {
    
    
    func animatorWithType(type: String){
        
    }
    
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        return 1.5;
    }
    
    /**
    Required by UIViewControllerAnimatedTransitioning
    */
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        let fromVC = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        let toVC = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        
        let fromView = transitionContext.viewForKey(UITransitionContextFromViewKey)!
        let toView = transitionContext.viewForKey(UITransitionContextToViewKey)!

        let containerView = transitionContext.containerView()
        containerView.addSubview(toView)
        
        TransAnimator.animate(fromVC, toVC: toVC, containerView: containerView, transitionContext: transitionContext)

    }
    
}


class TransAnimator: NSObject {
    class func animate(fromVC: UIViewController, toVC: UIViewController, containerView: UIView, transitionContext: UIViewControllerContextTransitioning){
        
        let fromView = transitionContext.viewForKey(UITransitionContextFromViewKey)!
        let toView = transitionContext.viewForKey(UITransitionContextToViewKey)!
        
        toView.alpha = 0.0
        
        UIView.animateWithDuration(1.5, animations: {
            toView.alpha = 1.0
            fromView.layer.transform = CATransform3DMakeScale(0.1, 0.1, 0.1)
            }) { (_) in
                fromView.layer.transform = CATransform3DIdentity
                transitionContext.completeTransition(true)
        }
    }
    
    
    
    class func animateShake(fromVC: UIViewController, toVC: UIViewController, containerView: UIView, transitionContext: UIViewControllerContextTransitioning){
        
        let fromView = transitionContext.viewForKey(UITransitionContextFromViewKey)!
        let toView = transitionContext.viewForKey(UITransitionContextToViewKey)!
        
        toView.alpha = 0.0
        
        UIView.animateWithDuration(1.5, animations: {
            toView.alpha = 1.0
            fromView.layer.transform = CATransform3DMakeScale(0.1, 0.1, 0.1)
            }) { (_) in
                fromView.layer.transform = CATransform3DIdentity
                transitionContext.completeTransition(true)
        }
    }
}
