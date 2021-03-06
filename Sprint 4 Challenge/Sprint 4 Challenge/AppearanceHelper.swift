//
//  AppearanceHelper.swift
//  Sprint 4 Challenge
//
//  Created by John Pitts on 5/31/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

enum AppearanceHelper {
    
    static var floridaOrange = UIColor(red: 216.0/255.0, green: 137.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static var backgroundBlue = UIColor(red: 8.0/255.0, green: 0.0/255.0, blue: 254.0/255.0, alpha: 1.0)
    
    static func customFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "Chalkduster", size: pointSize)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font) // scales the font
    }
    
    static func setColorAppearance() {
        UIButton.appearance().tintColor = floridaOrange
        UINavigationBar.appearance().backgroundColor = backgroundBlue
        
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: floridaOrange,
                              NSAttributedString.Key.font: customFont(with: .title1, pointSize: 35)]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UISearchBar.appearance().barTintColor = floridaOrange
        //UIView.appearance().backgroundColor = backgroundBlue
        // can't seem to make my UIView background color backgroundBlue! WTF?
        
        
    }
}
