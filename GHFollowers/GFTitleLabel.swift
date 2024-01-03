//
//  GFTitleLabel.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 3.01.2024.
//

import UIKit

class GFTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(textAlignment: NSTextAlignment, fontSize: CGFloat) { // Her title'im bold olacak ama text boyutlari degisebilir.
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        configure()
    }
    
    
    private func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9 // En fazla %90 kadar kuculebilir
        lineBreakMode = .byTruncatingTail // sigmazsa ... diye devam ettir
        translatesAutoresizingMaskIntoConstraints = false
    }
}
