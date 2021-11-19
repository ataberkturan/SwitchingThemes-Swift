//
//  Themes.swift
//  SwitchingThemes
//
//  Created by Ataberk Turan on 17.11.2021.
//

import UIKit

struct OriginalTheme: ThemeProtocol {
    var buttonTintColor: UIColor = UIColor.black
    var textColor: UIColor = UIColor.black
    var textFont: UIFont = UIFont.systemFont(ofSize: 25)
    var authorTextFont: UIFont = UIFont.systemFont(ofSize: 20)
    var backgroundColor: UIColor = UIColor.systemBackground
    var backgroundImage: UIImage = UIImage(named: "ClearImage")!
}

struct PurpleTheme: ThemeProtocol {
    var buttonTintColor: UIColor = UIColor.white
    var textColor: UIColor = UIColor.white
    var textFont: UIFont = UIFont.systemFont(ofSize: 25)
    var authorTextFont: UIFont = UIFont.systemFont(ofSize: 20)
    var backgroundColor: UIColor = UIColor.systemPurple
    // ClearImage is transparent image that I created.
    var backgroundImage: UIImage = UIImage(named: "ClearImage")!
}

struct PatternTheme: ThemeProtocol {
    var buttonTintColor: UIColor = UIColor.black
    var textColor: UIColor = UIColor.black
    var textFont: UIFont = UIFont(name: "ArialHebrew", size: 25)!
    var authorTextFont: UIFont = UIFont(name: "ArialHebrew-Light", size: 20)!
    // If background image is not ClearImage then backgroundColor is not important.
    var backgroundColor: UIColor = UIColor.systemBackground
    var backgroundImage: UIImage = UIImage(named: "PatternImage")!
}
