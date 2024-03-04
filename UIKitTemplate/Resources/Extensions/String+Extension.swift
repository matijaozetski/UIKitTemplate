//
//  String+Extension.swift
//  UIKitTemplate
//
//  Created by authorName on creationDate
//

import Foundation

extension String {
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "??\(self)??", comment: "")
    }
}
