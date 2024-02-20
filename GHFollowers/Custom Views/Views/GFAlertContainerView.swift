//
//  GFAlertContainerView.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 20.02.2024.
//

import UIKit

class GFAlertContainerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
       backgroundColor = .systemBackground // light'sa beyaz dark'sa black
       layer.cornerRadius = 16
       layer.borderWidth = 2
       layer.borderColor = UIColor.white.cgColor
       translatesAutoresizingMaskIntoConstraints = false

    }
    
}
