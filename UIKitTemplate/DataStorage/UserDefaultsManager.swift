//
//  UserDefaultsManager.swift
//  UIKitTemplate
//
//  Created by authorName on creationDate
//

import Foundation

// UserDefaultsManager is used for storing and retrieving non-sensitive data like user settings
struct UserDefaultsManager {
    static var shared = UserDefaultsManager()
    
    private init() {}
    
    // Usage example:
    // To get a value: let quality = UserDefaultsManager.shared.imageQuality
    // To set a value: UserDefaultsManager.shared.imageQuality = 95
    var imageQuality: Int {
        get {
            if UserDefaults.standard.object(forKey: "imageQuality") == nil {
                UserDefaults.standard.set(50, forKey: "imageQuality")
            }
            return UserDefaults.standard.integer(forKey: "imageQuality")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "imageQuality")
        }
    }
    
    // Additional properties and methods...
}
