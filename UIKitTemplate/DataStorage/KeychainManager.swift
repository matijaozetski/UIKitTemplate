//
//  KeychainManager.swift
//  UIKitTemplate
//
//  Created by authorName on creationDate
//

import KeychainSwift

struct KeychainKeys {
    //    static let yourKey = "YourKey"
}

// KeychainManager is used for secure storage of sensitive data like tokens, passwords, etc.
class KeychainManager {
    private let keychain = KeychainSwift(keyPrefix: "YourAppPrefix_")
    
    func save(_ value: String, forKey key: String) {
        keychain.set(value, forKey: key)
    }
    
    func getValue(forKey key: String) -> String? {
        return keychain.get(key)
    }
    
    func removeValue(forKey key: String) {
        keychain.delete(key)
    }
    
    // Usage example:
    // To save a value: keychainManager.save("yourValue", forKey: "yourKey")
    // To retrieve a value: let value = keychainManager.getValue(forKey: "yourKey")
    // To remove a value: keychainManager.removeValue(forKey: "yourKey")
}
