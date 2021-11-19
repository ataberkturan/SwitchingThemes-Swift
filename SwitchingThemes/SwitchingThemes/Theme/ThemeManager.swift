//
//  ThemeManager.swift
//  SwitchingThemes
//
//  Created by Ataberk Turan on 17.11.2021.
//

import Foundation

class ThemeManager {
    static var current: ThemeProtocol = themes[0]
    
    static let themes = [OriginalTheme(), PurpleTheme(), PatternTheme()] as! [ThemeProtocol]
}
   
