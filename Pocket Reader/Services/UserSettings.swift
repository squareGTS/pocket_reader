//
//  UserSettings.swift
//  Pocket Reader
//
//  Created by Maxim Bekmetov on 16.11.2021.
//  Copyright © 2021 Maxim Bekmetov. All rights reserved.
//

import UIKit

final class UserSettings {
    
    private enum SettingKey: String {
        case userBooks
    }
    
    static var userBooks: [BookItem] {
        get {
            guard let savedBooks = UserDefaults.standard.object(forKey: SettingKey.userBooks.rawValue) as? Data, let decodedBooks = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(savedBooks) as? [BookItem] else { return [] }
            return decodedBooks
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingKey.userBooks.rawValue

            if let savedData = try? NSKeyedArchiver.archivedData(withRootObject: newValue, requiringSecureCoding: false) {
                print("value: \(newValue) was added to key \(key)")
                defaults.set(savedData, forKey: key)
            }
        }
    }
}
