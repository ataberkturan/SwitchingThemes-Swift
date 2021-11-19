//
//  SelectThemeVC+Extension.swift
//  SwitchingThemes
//
//  Created by Ataberk Turan on 17.11.2021.
//

import UIKit

extension SelectThemeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SelectThemeCell().reuseID) as? SelectThemeCell else { fatalError("SelectThemeCell Error") }
        
        cell.label.text = self.themeNames[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ThemeManager.current = ThemeManager.themes[indexPath.row]
        NotificationCenter.default.post(name: NSNotification.Name("ThemeUpdate"), object: nil)
        dismiss(animated: true, completion: nil)
    }
}
