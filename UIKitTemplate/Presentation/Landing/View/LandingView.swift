//
//  LandingView.swift
//  UIKitTemplate
//
//  Created by authorName on creationDate
//

import UIKit

class LandingView: UIView {
    
    // MARK: - UI properties
    
    // MARK: - Private Properties
    
    // MARK: - Public properties
    weak var delegate: LandingButtonActionsDelegate?
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
        addSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

// MARK: - Private functions
private extension LandingView {
    // Configure the view's appearance and properties.
    func configureView() {
        
    }
    
    // Add UI elements as subviews.
    func addSubviews() {
        
    }
    
    // Setup layout and constraints for UI elements.
    func setupLayout() {
        
    }
}
