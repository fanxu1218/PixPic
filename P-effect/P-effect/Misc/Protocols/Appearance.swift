//
//  Appearance.swift
//  P-effect
//
//  Created by anna on 3/11/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

import Foundation

public struct Appearance: Equatable {
    
    public struct Bar: Equatable {
        
        var barTintColor = UIColor.appNavBarColor
        var translucent = false
        var titleTextAttributes = [NSForegroundColorAttributeName: UIColor.appWhiteColor]
        var backIndicatorImage = UIImage.appBackButton()
        var backIndicatorTransitionMaskImage = UIImage.appBackButton()
        var tintColor = UIColor.appWhiteColor
        var topItemTitle = ""

    }
    
    var statusBarStyle: UIStatusBarStyle = .LightContent
    var navigationBar = Bar()
    
}

public func ==(lhs: Appearance.Bar, rhs: Appearance.Bar) -> Bool {
    return lhs.barTintColor == rhs.barTintColor &&
        lhs.translucent == rhs.translucent &&
        lhs.titleTextAttributes == rhs.titleTextAttributes &&
        lhs.backIndicatorImage == rhs.backIndicatorImage &&
        lhs.backIndicatorTransitionMaskImage == rhs.backIndicatorTransitionMaskImage &&
        lhs.tintColor == rhs.tintColor &&
        lhs.topItemTitle == rhs.topItemTitle
}

public func ==(lhs: Appearance, rhs: Appearance) -> Bool {
    return lhs.statusBarStyle == rhs.statusBarStyle &&
        lhs.navigationBar == rhs.navigationBar
}