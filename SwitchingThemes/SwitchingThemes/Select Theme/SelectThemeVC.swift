//
//  SelectThemeVC.swift
//  SwitchingThemes
//
//  Created by Ataberk Turan on 15.11.2021.
//

import UIKit

class SelectThemeVC: UIViewController {

    @IBOutlet weak var selectThemeTableView: UITableView!
    
    let themeNames = ["Original Theme", "Purple Theme", "Pattern Theme"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        self.selectThemeTableView.delegate = self
        self.selectThemeTableView.dataSource = self
    }
    
}
