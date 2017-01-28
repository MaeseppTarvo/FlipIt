//
//  FlipIt.swift
//  FlipIt
//
//  Created by Tarvo Mäesepp on 28/01/2017.
//  Copyright © 2017 Tarvo Mäesepp. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    
    func flip(firstView: UIView, secondView: UIView, duration: Double) {
        
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: firstView, duration: duration, options: transitionOptions, animations: {
            firstView.isHidden = true
        })
        
        UIView.transition(with: secondView, duration: duration, options: transitionOptions, animations: {
            secondView.isHidden = false
        })
    }
    func backFlip(firstView: UIView, secondView: UIView, duration: Double){
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: firstView, duration: duration, options: transitionOptions, animations: {
            firstView.isHidden = false
        })
        
        UIView.transition(with: secondView, duration: duration, options: transitionOptions, animations: {
            secondView.isHidden = true
        })
    }
    
}
