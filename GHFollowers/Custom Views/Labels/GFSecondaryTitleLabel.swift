//
//  GFSecondaryTitleLabel.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 17.01.2024.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    convenience init(fontSize: CGFloat) {
        self.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
    }
    
    
    private func configure() {
        textColor = .secondaryLabel // acik gri
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.90 // En fazla %90 kadar kuculebilir
        lineBreakMode = .byTruncatingTail // sigmazsa ... yapacak
        translatesAutoresizingMaskIntoConstraints = false
    }
}
