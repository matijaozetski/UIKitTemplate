//
//  LandingViewModel.swift
//  UIKitTemplate
//
//  Created by authorName on creationDate
//

import Foundation

// MARK: - LandingViewModelDelegate
// Protocol to define methods for ViewModel to communicate with ViewController.
protocol LandingViewModelDelegate: AnyObject { 
    
}

class LandingViewModel {
    
    // MARK: - Private Properties
    private weak var delegate: LandingViewModelDelegate?
    
    // MARK: - Init
    init(delegate: LandingViewModelDelegate) {
        self.delegate = delegate
    }
    
    // Add ViewModel methods here...
}
