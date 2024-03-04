//
//  LandingViewController.swift
//  UIKitTemplate
//
//  Created by authorName on creationDate
//

import UIKit
import SnapKit

class LandingViewController: UIViewController {
    
    // MARK: - UI properties
    private var landingView: LandingView = {
        let view = LandingView()
        return view
    }()
    
    // MARK: - Private properties
    private lazy var landingViewModel: LandingViewModel = {
        return LandingViewModel(delegate: self)
    }()
    
    // MARK: - Public Properties
    
    // MARK: - Init
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        addSubviews()
        setupLayout()
        landingView.delegate = self
    }
}

// MARK: - Private Functions
private extension LandingViewController {
    // Configure the overall view settings (e.g., background color).
    func configureView() {
        
    }
    
    // Add subviews to the view hierarchy.
    func addSubviews() {
        self.view.addSubview(landingView)
    }
    
    // Set up constraints and layout for subviews.
    func setupLayout() {
        landingView.snp.makeConstraints({ make in
            make.edges.equalToSuperview()
        })
    }
}

// MARK: - LandingViewModelDelegate
// Extension to handle responses from the ViewModel.
extension LandingViewController: LandingViewModelDelegate {
    
}

// MARK: - LandingButtonActionsDelegate
// Extension to handle button actions from the LandingView.
extension LandingViewController: LandingButtonActionsDelegate {
    func startButtonTapped() {
        // Handle the start button tap action.
    }
}
