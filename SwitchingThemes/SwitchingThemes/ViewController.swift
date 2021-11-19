//
//  ViewController.swift
//  SwitchingThemes
//
//  Created by Ataberk Turan on 15.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var themeButton: UIButton!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    let themeManager = ThemeManager.current
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catchNotification()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        applyTheme()
    }
    
    func applyTheme() {
        self.view.backgroundColor = ThemeManager.current.backgroundColor
        backgroundImage.image = ThemeManager.current.backgroundImage
        
        quoteLabel.textColor = ThemeManager.current.textColor
        quoteLabel.font = ThemeManager.current.textFont
        
        authorLabel.textColor = ThemeManager.current.textColor
        authorLabel.font = ThemeManager.current.authorTextFont
        
        // "Brush" button
        themeButton.tintColor = ThemeManager.current.buttonTintColor
    }
    
    func catchNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(reloadTheme), name: NSNotification.Name("ThemeUpdate"), object: nil)
    }
    
    @objc
    func reloadTheme() {
        applyTheme()   
    }

}

