//
//  SettingsViewModel.swift
//  IphoneSettingsMVVM
//
//  Created by Arnur Sakenov on 11.04.2023.
//

import UIKit

class SettingsViewModel {
    private let settingsController = SettingsModel()
    
    var sections: [Section] {
        return settingsController.models
    }
    
    func numberOfRows(in section: Int) -> Int {
        return sections[section].options.count
    }
    
    func titleForSection(at section: Int) -> String {
        return sections[section].title
    }
    
    func settingsOptionType(for indexPath: IndexPath) -> SettingsOptionType {
        return sections[indexPath.section].options[indexPath.row]
    }
}
