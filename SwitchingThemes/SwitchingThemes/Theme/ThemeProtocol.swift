//
//  ThemeProtocol.swift
//  SwitchingThemes
//
//  Created by Ataberk Turan on 17.11.2021.
//

import UIKit

protocol ThemeProtocol {
    var buttonTintColor: UIColor { get set }
    var textColor: UIColor { get set }
    var textFont: UIFont { get set }
    var authorTextFont: UIFont { get set }
    var backgroundColor: UIColor { get set }
    var backgroundImage: UIImage { get set }
}
     
